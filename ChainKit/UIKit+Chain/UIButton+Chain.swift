//
//  UIButton+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/5/23.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension Chain where Base: UIButton {
    
    @discardableResult
    public static func make(_ buttonType: UIButton.ButtonType, closure: (ViewChain<Base>) -> Void) -> Base {
        let instance = Base(type: buttonType)
        closure(ViewChain(instance))
        return instance
    }
}

extension ViewChain where ViewBase: UIButton {
    
}
