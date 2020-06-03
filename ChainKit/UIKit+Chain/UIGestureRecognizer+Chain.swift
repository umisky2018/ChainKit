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
    public func cancelsTouchesInView(enable: Bool) -> Self {
        base.cancelsTouchesInView = enable
        return self
    }

    @discardableResult
    public func delaysTouchesBegan(enable: Bool) -> Self {
        base.delaysTouchesBegan = enable
        return self
    }
    
    @discardableResult
    public func delaysTouchesEnded(enable: Bool) -> Self {
        base.delaysTouchesEnded = enable
        return self
    }
}

// MARK: - Actions

fileprivate var gestureRecognizerActionWrapperKey = "gestureRecognizerActionWrapperKey"

extension Chain where Base: UIGestureRecognizer {
    
    @discardableResult
    public func addAction(action: @escaping (UIGestureRecognizer) -> Void) -> Self {
        let wrapper = associatedObject(base, key: &gestureRecognizerActionWrapperKey, initial: { GestureRecognizerActionWrapper() })
        wrapper.append(action: action)
        base.addTarget(wrapper, action: #selector(GestureRecognizerActionWrapper.executeAction(recognizer:)))
        return self
    }
    
    @discardableResult
    public func removeAllActions() -> Self {
        let wrapper = associatedObject(base, key: &gestureRecognizerActionWrapperKey, initial: { GestureRecognizerActionWrapper() })
        wrapper.removeAllActions()
        return self
    }
}


fileprivate class GestureRecognizerActionWrapper {
    
    fileprivate typealias Action = (UIGestureRecognizer) -> Void
    
    fileprivate var actions: [Action] = []
    
    fileprivate init() { }
    
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
}
