//
//  UILabel+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/5/23.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension Chain where Base: UILabel {
    
    @discardableResult
    public func font(_ font: UIFont) -> Self {
        base.font = font
        return self
    }
    
    @discardableResult
    public func text(_ text: String) -> Self {
        base.text = text
        return self
    }
    
    @discardableResult
    public func text(color: UIColor) -> Self {
        base.textColor = color
        return self
    }
    
    /// UILabel function
    @discardableResult
    public func shadow(color: UIColor) -> Self {
        base.shadowColor = color
        return self
    }
    
    /// UILabel function
    @discardableResult
    public func shadow(offset: CGSize) -> Self {
        base.shadowOffset = offset
        return self
    }
    
    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        base.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    public func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        base.lineBreakMode = lineBreakMode
        return self
    }
    
    @discardableResult
    public func attributedText(_ attributedText: NSAttributedString) -> Self {
        base.attributedText = attributedText
        return self
    }
    
    @discardableResult
    public func highlighted(textColor: UIColor) -> Self {
        base.highlightedTextColor = textColor
        return self
    }
    
    @discardableResult
    public func isHighlighted(_ isHighlighted: Bool) -> Self {
        base.isHighlighted = isHighlighted
        return self
    }
    
    @discardableResult
    public func isEnable(_ isEnable: Bool) -> Self {
        base.isEnabled = isEnable
        return self
    }
    
    @discardableResult
    public func numberOfLines(_ numberOfLines: Int) -> Self {
        base.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    public func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        base.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    @discardableResult
    public func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> Self {
        base.baselineAdjustment = baselineAdjustment
        return self
    }
    
    @discardableResult
    public func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> Self {
        base.minimumScaleFactor = minimumScaleFactor
        return self
    }
    
    @discardableResult
    public func allowsDefaultTighteningForTruncation(_ allowsDefaultTighteningForTruncation: Bool) -> Self {
        base.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        return self
    }
    
    @discardableResult
    public func preferredMaxLayoutWidth(_ preferredMaxLayoutWidth: CGFloat) -> Self {
        base.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        return self
    }
}
