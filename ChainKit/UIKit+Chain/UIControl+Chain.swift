//
//  UIControl+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/5/23.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension Chain where Base: UIControl {
    
}

// MARK: - Actions

private var controlEventActionKey = "controlEventActionKey"

extension Chain where Base: UIControl {
    
    public func addAction(for controlEvent: UIControl.Event = .touchUpInside, action: @escaping (UIButton) -> Void) -> Self {
        var wrapperList = associatedObject(self.base, key: &controlEventActionKey, initial: { [ControlEventActionWrapper]() })
        let wrapper = ControlEventActionWrapper(action)
        wrapperList.append(wrapper)
        setAssociatedObject(self.base, key: &controlEventActionKey, value: wrapperList)
        self.base.addTarget(wrapper, action: #selector(ControlEventActionWrapper.executeAction), for: controlEvent)
        return self
    }
}

internal class ControlEventActionWrapper: NSObject {
    
    typealias Action = (UIButton) -> Void
    
    private var action: Action
    
    internal init(_ action: @escaping Action) {
        self.action = action
    }
    
    @objc
    func executeAction(sender: UIButton) {
        self.action(sender)
    }
}
