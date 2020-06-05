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
    public func userInteractionEnabled(_ userInteractionEnabled: Bool) -> Self {
        base.isUserInteractionEnabled = userInteractionEnabled
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
    public func multipleTouchEnabled(_ multipleTouchEnabled: Bool) -> Self {
        base.isMultipleTouchEnabled = multipleTouchEnabled
        return self
    }
    
    @discardableResult
    public func exclusiveTouch(_ exclusiveTouch: Bool) -> Self {
        base.isExclusiveTouch = exclusiveTouch
        return self
    }
    
    @discardableResult
    public func autoresizesSubviews(_ autoresizesSubviews: Bool) -> Self {
        base.autoresizesSubviews = autoresizesSubviews
        return self
    }
    
    @discardableResult
    public func autoresizingMask(_ autoresizingMask: UIView.AutoresizingMask) -> Self {
        base.autoresizingMask = autoresizingMask
        return self
    }
    
    @discardableResult
    public func layoutMargins(_ layoutMargins: UIEdgeInsets) -> Self {
        base.layoutMargins = layoutMargins
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        base.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        base.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func alpha(_ alpha: CGFloat) -> Self {
        base.alpha = alpha
        return self
    }
    
    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        base.isHidden = isHidden
        return self
    }
    
    @discardableResult
    public func isOpaque(_ isOpaque: Bool) -> Self {
        base.isOpaque = isOpaque
        return self
    }
    
    @discardableResult
    public func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        base.contentMode = contentMode
        return self
    }
    
    @discardableResult
    public func mask(_ mask: UIView?) -> Self {
        base.mask = mask
        return self
    }
    
    @discardableResult
    public func tintColor(_ tintColor: UIColor) -> Self {
        base.tintColor = tintColor
        return self
    }
    
    @discardableResult
    public func tintAdjustmentMode(_ tintAdjustmentMode: UIView.TintAdjustmentMode) -> Self {
        base.tintAdjustmentMode = tintAdjustmentMode
        return self
    }
    
    @discardableResult
    public func bounds(_ bounds: CGRect) -> Self {
        base.bounds = bounds
        return self
    }
    
    @discardableResult
    public func add(gestureRecognizer: UIGestureRecognizer) -> Self {
        base.addGestureRecognizer(gestureRecognizer)
        return self
    }
    
    @discardableResult
    public func sizeToFit() -> Self {
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
        self.origin(CGPoint(x: x, y: y))
        return self
    }
    
    @discardableResult
    public func origin(_ origin: CGPoint) -> Self {
        var frame = base.frame
        frame.origin = origin
        base.frame = frame
        return self
    }
    
    @discardableResult
    public func size(width: CGFloat, height: CGFloat) -> Self {
        self.size(CGSize(width: width, height: height))
        return self
    }
    
    @discardableResult
    public func size(_ size: CGSize) -> Self {
        var frame = base.frame
        frame.size = size
        base.frame = frame
        return self
    }

    
    @discardableResult
    public func frame(x: CGFloat = 0, y: CGFloat = 0, width: CGFloat, height: CGFloat) -> Self {
        self.frame(CGRect(x: x, y: y, width: width, height: height))
        return self
    }
}

// MARK: - Move

extension Chain where Base: UIView {
    
    @discardableResult
    public func add(subView: UIView) -> Self {
        base.addSubview(subView)
        return self
    }
    
    @discardableResult
    public func add(to superView: UIView?) -> Self {
        superView?.addSubview(base)
        return self
    }

    @discardableResult
    public func bringSubviewToFront(_ view: UIView) -> Self {
        base.bringSubviewToFront(view)
        return self
    }
    
    @discardableResult
    public func sendSubviewToBack(_ view: UIView) -> Self {
        base.sendSubviewToBack(view)
        return self
    }

    @discardableResult
    public func bringToFront() -> Self {
        base.superview?.bringSubviewToFront(base)
        return self
    }

    @discardableResult
    public func sendToBack() -> Self {
        base.superview?.sendSubviewToBack(base)
        return self
    }

    @discardableResult
    public func insertSubview(_ view: UIView, belowSubview siblingSubview: UIView) -> Self {
        base.insertSubview(view, belowSubview: siblingSubview)
        return self
    }

    @discardableResult
    public func insertSubview(_ view: UIView, aboveSubview siblingSubview: UIView) -> Self {
        base.insertSubview(view, aboveSubview: siblingSubview)
        return self
    }

    @discardableResult
    public func insertBelow(_ view: UIView) -> Self {
        base.superview?.insertSubview(base, belowSubview: view)
        return self
    }
    
    @discardableResult
    public func insertAbove(_ view: UIView) -> Self {
        base.superview?.insertSubview(base, aboveSubview: view)
        return self
    }
}

// MARK: - Actions

private var tapGestureRecognizerWrapperKey = "tapGestureRecognizerWrapperKey"

extension Chain where Base: UIView {
    
    @discardableResult
    public func tap(action: @escaping () -> Void) -> Self {
        let tap = associatedObject(base, key: &tapGestureRecognizerWrapperKey, initial: { UITapGestureRecognizer() })
        tap.chain.addTapAction(taps: 1, touches: 1, action: { _ in action() })
        if !(base.gestureRecognizers?.contains(tap) ?? false) {
            base.addGestureRecognizer(tap)
        }
        return self
    }
    
    @discardableResult
    public func removeAllTapAction() -> Self {
        let tap: UITapGestureRecognizer? = getAssociatedObject(base, key: &tapGestureRecognizerWrapperKey)
        tap?.chain.removeAllGestureActions()
        base.gestureRecognizers?.forEach { base.removeGestureRecognizer($0) }
        return self
    }
}
