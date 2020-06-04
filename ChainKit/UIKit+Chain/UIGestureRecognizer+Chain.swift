//
//  UIGestureRecognizer+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/6/3.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension UIGestureRecognizer: ChainCompatible { }

extension Chain where Base: UIGestureRecognizer {
    
    @discardableResult
    public func state(_ state: UIGestureRecognizer.State) -> Self {
        base.state = state
        return self
    }
    
    @discardableResult
    public func isEnabled(_ isEnabled: Bool) -> Self {
        base.isEnabled = isEnabled
        return self
    }
    
    @discardableResult
    public func cancelsTouchesInView(_ cancelsTouchesInView: Bool) -> Self {
        base.cancelsTouchesInView = cancelsTouchesInView
        return self
    }

    @discardableResult
    public func delaysTouchesBegan(_ delaysTouchesBegan: Bool) -> Self {
        base.delaysTouchesBegan = delaysTouchesBegan
        return self
    }
    
    @discardableResult
    public func delaysTouchesEnded(_ delaysTouchesEnded: Bool) -> Self {
        base.delaysTouchesEnded = delaysTouchesEnded
        return self
    }
}

extension Chain where Base: UIGestureRecognizer {

    @discardableResult
    public func add(to view: UIView) -> Self {
        view.addGestureRecognizer(base)
        return self
    }
}

// MARK: - Actions

fileprivate var gestureRecognizerActionWrapperKey = "gestureRecognizerActionWrapperKey"

extension Chain where Base: UIGestureRecognizer {
    
    @discardableResult
    public func addGestureAction(action: @escaping (Base) -> Void) -> Self {
        let wrapper = associatedObject(base, key: &gestureRecognizerActionWrapperKey, initial: { GestureRecognizerActionWrapper() })
        wrapper.append { if let base = $0 as? Base { action(base) }}
        base.addTarget(wrapper, action: #selector(GestureRecognizerActionWrapper.executeAction(recognizer:)))
        return self
    }
    
    @discardableResult
    public func removeAllGestureActions() -> Self {
        let wrapper = associatedObject(base, key: &gestureRecognizerActionWrapperKey, initial: { GestureRecognizerActionWrapper() })
        wrapper.removeAllActions()
        return self
    }
}

// MARK: - Action Wrapper

fileprivate class GestureRecognizerActionWrapper: NSObject {
    
    fileprivate typealias Action = (UIGestureRecognizer) -> Void
    
    fileprivate var actions: [Action] = []
    
    fileprivate func append(action: @escaping Action) {
        self.actions.append(action)
    }
    
    fileprivate func removeAllActions() {
        self.actions.removeAll()
    }
    
    @objc
    fileprivate func executeAction(recognizer: UITapGestureRecognizer) {
        self.actions.forEach{ $0(recognizer) }
    }
    
    deinit {
        logger("deinit \(type(of: self))")
    }
}
