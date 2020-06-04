//
//  ViewConfigurator.swift
//  ChainDemo
//
//  Created by umisky on 2020/5/24.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit
import ChainKit

extension Chain where Base: UIView {

    @discardableResult
    func makeDefaultView() -> Self {
        self.background(color: Theme.current.backgroundColor)
        return self
    }

    @discardableResult
    func makeDefaultShdow() -> Self {
        self.shadow(color: Theme.current.shadowColor)
            .shadow(offset: CGSize(width: 3, height: 3))
            .shadow(radius: 5)
            .shadow(opacity: 0.75)
        return self
    }
    
    @discardableResult
    func makeLightShdow() -> Self {
        self.shadow(color: Theme.current.shadowColor)
            .shadow(offset: CGSize(width: 1, height: 1))
            .shadow(radius: 2)
            .shadow(opacity: 0.9)
        return self
    }
    
    @discardableResult
    func makeMainColor() -> Self {
        self.background(color: Theme.current.mainColor)
        return self
    }

}
