//
//  UIControl+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/5/23.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension Chain where Base: UIControl {
    
    @discardableResult
    public func isEnabled(_ isEnabled: Bool) -> Self {
        base.isEnabled = isEnabled
        return self
    }

    @discardableResult
    public func isSelected(_ isSelected: Bool) -> Self {
        base.isSelected = isSelected
        return self
    }

    @discardableResult
    public func isHighlighted(_ isHighlighted: Bool) -> Self {
        base.isHighlighted = isHighlighted
        return self
    }

    @discardableResult
    public func contentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> Self {
        base.contentVerticalAlignment = contentVerticalAlignment
        return self
    }

    @discardableResult
    public func contentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> Self {
        base.contentHorizontalAlignment = contentHorizontalAlignment
        return self
    }

    @discardableResult
    public func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Self {
        base.beginTracking(touch, with: event)
        return self
    }

    @discardableResult
    public func continueTracking(_ touch: UITouch, with event: UIEvent?) -> Self {
        base.continueTracking(touch, with: event)
        return self
    }

    @discardableResult
    public func endTracking(_ touch: UITouch?, with event: UIEvent?) -> Self {
        base.endTracking(touch, with: event)
        return self
    }

    @discardableResult
    public func cancelTracking(with event: UIEvent?) -> Self {
        base.cancelTracking(with: event)
        return self
    }

    @discardableResult
    public func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event = .touchUpInside) -> Self {
        base.addTarget(target, action: action, for: controlEvents)
        return self
    }

    @discardableResult
    public func removeTarget(_ target: Any?, action: Selector?, for controlEvents: UIControl.Event = .touchUpInside) -> Self {
        base.removeTarget(target, action: action, for: controlEvents)
        return self
    }

    @discardableResult
    public func sendAction(_ action: Selector, to target: Any?, for event: UIEvent?) -> Self {
        base.sendAction(action, to: target, for: event)
        return self
    }

    @discardableResult
    public func sendActions(for controlEvents: UIControl.Event) -> Self {
        base.sendActions(for: controlEvents)
        return self
    }
}

// MARK: - Actions

private var controlEventActionKey = "controlEventActionKey"

extension Chain where Base: UIControl {
    
    public func addAction(for controlEvent: UIControl.Event = .touchUpInside, action: @escaping (Chain<Base>) -> Void) -> Self {
        var wrapperList = associatedObject(self.base, key: &controlEventActionKey, initial: { [ControlEventActionWrapper]() })
        let wrapper = ControlEventActionWrapper { if let control = $0 as? Base { action(Chain(control)) }}
        wrapperList.append(wrapper)
        setAssociatedObject(self.base, key: &controlEventActionKey, value: wrapperList)
        self.base.addTarget(wrapper, action: #selector(ControlEventActionWrapper.executeAction), for: controlEvent)
        return self
    }
}

fileprivate class ControlEventActionWrapper: NSObject {
    
    typealias Action = (UIControl) -> Void
    
    private var action: Action
    
    fileprivate init(_ action: @escaping Action) {
        self.action = action
    }
    
    @objc
    fileprivate func executeAction(sender: UIControl) {
        self.action(sender)
    }
    
    deinit {
        logger("deinit \(type(of: self))")
    }
}
