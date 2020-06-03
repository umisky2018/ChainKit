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
    public func numberOfTapsRequired(_ number: Int) -> Self {
        base.numberOfTapsRequired = number
        return self
    }
    
    @discardableResult
    public func numberOfTouchesRequired(_ number: Int) -> Self {
        base.numberOfTouchesRequired = number
        return self
    }
}

extension Chain where Base: UITapGestureRecognizer {
    
    @discardableResult
    public func tapAction(taps: Int, touches: Int, action: @escaping (Base) -> Void) -> Self {
        self.numberOfTapsRequired(taps)
            .numberOfTouchesRequired(touches)
        
        return self
    }

}
