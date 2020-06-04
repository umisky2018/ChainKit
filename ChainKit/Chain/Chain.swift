//
//  Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/5/23.
//  Copyright © 2020 chenshu. All rights reserved.
//

import Foundation

// MARK: - namespace

public protocol ChainCompatible {
    
    associatedtype ChainBase
    
    static var chain: Chain<ChainBase>.Type { get set }
    
    var chain: Chain<ChainBase> { set get }
}

public extension ChainCompatible {
    
    static var chain: Chain<Self>.Type {
        get { return Chain.self }
        set { }
    }
    
    var chain: Chain<Self> {
        get { return Chain(self) }
        set { }
    }
}

public struct Chain<Base> {
    
    internal var base: Base
    
    internal init(_ base: Base) {
        self.base = base
    }
}

extension Chain {
    
    /// 原始对象
    public var value: Base {
        return self.base
    }
}
