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
    public func transform(_ transform: CGAffineTransform) -> Self {
        base.transform = transform
        return self
    }
    
    @discardableResult
    public func content(edgeInsets: UIEdgeInsets) -> Self {
        base.contentEdgeInsets = edgeInsets
        return self
    }
    
    @discardableResult
    public func title(edgeInsets: UIEdgeInsets) -> Self {
        base.titleEdgeInsets = edgeInsets
        return self
    }
    
    @discardableResult
    public func reversesTitleShadowWhenHighlighted(_ reversesTitleShadowWhenHighlighted: Bool) -> Self {
        base.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted
        return self
    }
    
    @discardableResult
    public func image(edgeInsets: UIEdgeInsets) -> Self {
        base.imageEdgeInsets = edgeInsets
        return self
    }
    
    @discardableResult
    public func adjustsImageWhenHighlighted(_ adjustsImageWhenHighlighted: Bool) -> Self {
        base.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted
        return self
    }
    
    @discardableResult
    public func adjustsImageWhenDisabled(_ adjustsImageWhenDisabled: Bool) -> Self {
        base.adjustsImageWhenDisabled = adjustsImageWhenDisabled
        return self
    }
    
    @discardableResult
    public func showsTouchWhenHighlighted(_ showsTouchWhenHighlighted: Bool) -> Self {
        base.showsTouchWhenHighlighted = showsTouchWhenHighlighted
        return self
    }
    
    @discardableResult
    public func tintColor(_ tintColor: UIColor!) -> Self {
        base.tintColor = tintColor
        return self
    }
    
    @discardableResult
    public func title(text: String?, for state: UIControl.State) -> Self {
        base.setTitle(text, for: state)
        return self
    }
    
    @discardableResult
    public func title(color: UIColor?, for state: UIControl.State) -> Self {
        base.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    public func title(shadowColor: UIColor?, for state: UIControl.State) -> Self {
        base.setTitleShadowColor(shadowColor, for: state)
        return self
    }
    
    @discardableResult
    public func image(_ image: UIImage?, for state: UIControl.State) -> Self {
        base.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func backgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State) -> Self {
        base.setBackgroundImage(backgroundImage, for: state)
        return self
    }
    
    @discardableResult
    public func attributedTitle(_ attributedTitle: NSAttributedString?, for state: UIControl.State) -> Self {
        base.setAttributedTitle(attributedTitle, for: state)
        return self
    }
    
    @discardableResult
    public func title(front: UIFont) -> Self {
        base.titleLabel?.font = front
        return self
    }
}
