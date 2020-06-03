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
            .shadow(radius: 10)
            .shadow(opacity: 0.5)
        return self
    }
    
    @discardableResult
    func makeMainColor() -> Self {
        self.background(color: Theme.current.mainColor)
        return self
    }

}
