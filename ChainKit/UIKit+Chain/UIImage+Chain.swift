//
//  UIImage+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/6/4.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension Chain where Base: UIImageView {
    
    @discardableResult
    public func image(_ image: UIImage?) -> Self {
        base.image = image
        return self
    }
    
    @discardableResult
    public func highlightedImage(_ highlightedImage: UIImage?) -> Self {
        base.highlightedImage = highlightedImage
        return self
    }
    
    @discardableResult
    public func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        base.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    public func isHighlighted(_ isHighlighted: Bool) -> Self {
        base.isHighlighted = isHighlighted
        return self
    }
    
    @discardableResult
    public func animationImages(_ animationImages: [UIImage]?) -> Self {
        base.animationImages = animationImages
        return self
    }
    
    @discardableResult
    public func highlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) -> Self {
        base.highlightedAnimationImages = highlightedAnimationImages
        return self
    }
    
    @discardableResult
    public func animationDuration(_ animationDuration: TimeInterval) -> Self {
        base.animationDuration = animationDuration
        return self
    }
    
    @discardableResult
    public func animationRepeatCount(_ animationRepeatCount: Int) -> Self {
        base.animationRepeatCount = animationRepeatCount
        return self
    }
    
    @discardableResult
    public func tintColor(_ tintColor: UIColor) -> Self {
        base.tintColor = tintColor
        return self
    }
}
