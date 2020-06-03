//
//  UIView+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/5/23.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension UIView: ChainCompatible { }

// MARK: - Normal

extension Chain where Base: UIView {
    
    @discardableResult
    public func userInteraction(enabled: Bool) -> Self {
        base.isUserInteractionEnabled = enabled
        return self
    }
    
    @discardableResult
    public func tag(_ tag: Int) -> Self {
        base.tag = tag
        return self
    }
    
    @discardableResult
    public func frame(_ frame: CGRect) -> Self {
        base.frame = frame
        return self
    }
    
    @discardableResult
    public func center(_ center: CGPoint) -> Self {
        base.center = center
        return self
    }
    
    @discardableResult
    public func transform(_ transform: CGAffineTransform) -> Self {
        base.transform = transform
        return self
    }
    
    @discardableResult
    public func multipleTouch(enabled: Bool) -> Self {
        base.isMultipleTouchEnabled = enabled
        return self
    }
    
    @discardableResult
    public func exclusiveTouch(_ enable: Bool) -> Self {
        base.isExclusiveTouch = enable
        return self
    }
    
    @discardableResult
    public func autoresizesSubviews(_ enable: Bool) -> Self {
        base.autoresizesSubviews = enable
        return self
    }
    
    @discardableResult
    public func autoresizingMask(_ mask: UIView.AutoresizingMask) -> Self {
        base.autoresizingMask = mask
        return self
    }
    
    @discardableResult
    public func layoutMargins(_ margins: UIEdgeInsets) -> Self {
        base.layoutMargins = margins
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ enable: Bool) -> Self {
        base.clipsToBounds = enable
        return self
    }
    
    @discardableResult
    public func background(color: UIColor) -> Self {
        base.backgroundColor = color
        return self
    }
    
    @discardableResult
    public func alpha(_ alpha: CGFloat) -> Self {
        base.alpha = alpha
        return self
    }
    
    @discardableResult
    public func hidden(_ isHidden: Bool) -> Self {
        base.isHidden = isHidden
        return self
    }
    
    @discardableResult
    public func opaque(_ isOpaque: Bool) -> Self {
        base.isOpaque = isOpaque
        return self
    }
    
    @discardableResult
    public func content(mode: UIView.ContentMode) -> Self {
        base.contentMode = mode
        return self
    }
    
    @discardableResult
    public func mask(_ mask: UIView?) -> Self {
        base.mask = mask
        return self
    }
    
    @discardableResult
    public func tint(color: UIColor) -> Self {
        base.tintColor = color
        return self
    }
    
    @discardableResult
    public func tint(adjustmentMode: UIView.TintAdjustmentMode) -> Self {
        base.tintAdjustmentMode = adjustmentMode
        return self
    }
    
    @discardableResult
    public func bounds(_ bounds: CGRect) -> Self {
        base.bounds = bounds
        return self
    }
    
    @discardableResult
    public func add(subView: UIView) -> Self {
        base.addSubview(subView)
        return self
    }
    
    @discardableResult
    public func add(gestureRecognizer: UIGestureRecognizer) -> Self {
        base.addGestureRecognizer(gestureRecognizer)
        return self
    }
    
    @discardableResult
    func sizeToFit() -> Self {
        base.sizeToFit()
        return self
    }
}

// MARK: - CALayer

extension Chain where Base: UIView {
    
    @discardableResult
    public func corner(radius: CGFloat) -> Self {
        base.layer.cornerRadius = radius
        return self
    }
    
    @discardableResult
    public func border(color: UIColor) -> Self {
        base.layer.borderColor = color.cgColor
        return self
    }
    
    @discardableResult
    public func border(width: CGFloat) -> Self {
        base.layer.borderWidth = width
        return self
    }
    
    /// UIView function
    @discardableResult
    public func shadow(color: UIColor) -> Self {
        base.layer.shadowColor = color.cgColor
        return self
    }
    
    @discardableResult
    public func shadow(offset: CGSize) -> Self {
        base.layer.shadowOffset = offset
        return self
    }
    
    @discardableResult
    public func shadow(opacity: CGFloat) -> Self {
        base.layer.shadowOpacity = Float(opacity)
        return self
    }
    
    @discardableResult
    public func shadow(radius: CGFloat) -> Self {
        base.layer.shadowRadius = radius
        return self
    }
    
    @discardableResult
    public func shadow(path: CGPath) -> Self {
        base.layer.shadowPath = path
        return self
    }
}

// MARK: - Custom Frame

extension Chain where Base: UIView {
    
    @discardableResult
    public func x(_ x: CGFloat) -> Self {
        var frame = base.frame
        frame.origin.x = x
        base.frame = frame
        return self
    }
    
    @discardableResult
    public func y(_ y: CGFloat) -> Self {
        var frame = base.frame
        frame.origin.y = y
        base.frame = frame
        return self
    }
    
    @discardableResult
    public func width(_ width: CGFloat) -> Self {
        var frame = base.frame
        frame.size.width = width
        base.frame = frame
        return self
    }
    
    @discardableResult
    public func height(_ height: CGFloat) -> Self {
        var frame = base.frame
        frame.size.height = height
        base.frame = frame
        return self
    }
    
    @discardableResult
    public func origin(x: CGFloat, y: CGFloat) -> Self {
        var frame = base.frame
        frame.origin = CGPoint(x: x, y: y)
        base.frame = frame
        return self
    }
    
    @discardableResult
    public func size(width: CGFloat, height: CGFloat) -> Self {
        var frame = base.frame
        frame.size = CGSize(width: width, height: height)
        base.frame = frame
        return self
    }
    
    @discardableResult
    public func frame(x: CGFloat = 0, y: CGFloat = 0, width: CGFloat, height: CGFloat) -> Self {
        self.frame(CGRect(x: x, y: y, width: width, height: height))
        return self
    }
}

// MARK: - Custom Others

extension Chain where Base: UIView {
    
    @discardableResult
    public func add(to superView: UIView) -> Self {
        superView.addSubview(base)
        return self
    }
}

// MARK: - Actions

private var tapActionWrapperKey = "tapActionWrapperKey"

extension Chain where Base: UIView {
    
//    @discardableResult
//    public func addTap(target: Any?, action: Selector) -> Self {
//        let tap = UITapGestureRecognizer().chain.addAction
//        self.base.addGestureRecognizer(tap)
//        return self
//    }
    
    @discardableResult
    public func addTap(action: @escaping () -> Void) -> Self {
        let tap = UITapGestureRecognizer().chain
            .addAction(action: { _ in
                action()
            })
            .base
        base.addGestureRecognizer(tap)
        return self
    }
    
    @discardableResult
    public func removeAllTapAction() -> Self {
        base.gestureRecognizers?
            .filter { $0 is UITapGestureRecognizer }
            .forEach ({
                $0.chain.removeAllActions()
                base.removeGestureRecognizer($0)
            })
        return self
    }
}
