//
//  UIView+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/5/23.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension Chain where Base: UIView {
    
    @discardableResult
    public static func make(closure: (ViewChain<Base>) -> Void) -> Base {
        let instance = Base()
        closure(ViewChain(instance))
        return instance
    }

    @discardableResult
    public func make(_ closure: (ViewChain<Base>) -> Void) -> Base {
        closure(ViewChain(self.base))
        return self.base
    }
}

extension ViewChain where ViewBase: UIView {
    
}
