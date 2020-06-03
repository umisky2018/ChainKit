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
