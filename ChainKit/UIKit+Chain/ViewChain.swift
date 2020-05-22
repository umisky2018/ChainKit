//
//  ViewChain.swift
//  ChainKit
//
//  Created by umisky on 2020/5/23.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension UIView: ChainCompatible { }

/// from Chain transform to ViewChain, and extension in ViewChain.
public struct ViewChain<ViewBase> where ViewBase: UIView {
    
    public var base: ViewBase
    
    init(_ base: ViewBase) {
        self.base = base
    }
}
