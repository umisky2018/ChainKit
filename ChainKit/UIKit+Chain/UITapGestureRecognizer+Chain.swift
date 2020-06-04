//
//  UITapGestureRecognizer+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/6/3.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension Chain where Base: UITapGestureRecognizer {

    @discardableResult
    public func numberOfTapsRequired(_ numberOfTapsRequired: Int) -> Self {
        base.numberOfTapsRequired = numberOfTapsRequired
        return self
    }
    
    @discardableResult
    public func numberOfTouchesRequired(_ numberOfTouchesRequired: Int) -> Self {
        base.numberOfTouchesRequired = numberOfTouchesRequired
        return self
    }
}

extension Chain where Base: UITapGestureRecognizer {
    
    @discardableResult
    public func addTapAction(taps: Int = 1, touches: Int = 1, action: @escaping (Chain<Base>) -> Void) -> Self {
        self.numberOfTapsRequired(taps)
            .numberOfTouchesRequired(touches)
        self.addGestureAction(action: { action(Chain($0)) })
        return self
    }
}
