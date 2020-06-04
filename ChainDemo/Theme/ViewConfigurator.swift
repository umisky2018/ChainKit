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
        self.backgroundColor(Theme.current.backgroundColor)
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
        self.backgroundColor(Theme.current.mainColor)
        return self
    }
}

extension Chain where Base: UILabel {
    
    @discardableResult
    public func makeDefaultLabel() -> Self {
        self.backgroundColor(.yellow)
            .text("sample label")
            .textAlignment(.center)
            .text(color: .green)
            .font(.boldSystemFont(ofSize: 30))
            .numberOfLines(0)
            .sizeToFit()
            .origin(x: 100, y: 300)
        return self
    }
}
