//
//  CALayer+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/6/5.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension CALayer: ChainCompatible { }

extension Chain where Base: CALayer {
    
    @discardableResult
    public func bounds(_ bounds: CGRect) -> Self {
        base.bounds = bounds
        return self
    }

    @discardableResult
    public func position(_ position: CGPoint) -> Self {
        base.position = position
        return self
    }

    @discardableResult
    public func zPosition(_ zPosition: CGFloat) -> Self {
        base.zPosition = zPosition
        return self
    }

    @discardableResult
    public func anchorPoint(_ anchorPoint: CGPoint) -> Self {
        base.anchorPoint = anchorPoint
        return self
    }

    @discardableResult
    public func anchorPointZ(_ anchorPointZ: CGFloat) -> Self {
        base.anchorPointZ = anchorPointZ
        return self
    }

    @discardableResult
    public func transform(_ transform: CATransform3D) -> Self {
        base.transform = transform
        return self
    }

    @discardableResult
    public func setAffineTransform(_ affineTransform: CGAffineTransform) -> Self {
        base.setAffineTransform(affineTransform)
        return self
    }

    @discardableResult
    public func frame(_ frame: CGRect) -> Self {
        base.frame = frame
        return self
    }

    @discardableResult
    public func isHidden(_ isHidden: Bool) -> Self {
        base.isHidden = isHidden
        return self
    }

    @discardableResult
    public func isDoubleSided(_ isDoubleSided: Bool) -> Self {
        base.isDoubleSided = isDoubleSided
        return self
    }

    @discardableResult
    public func isGeometryFlipped(_ isGeometryFlipped: Bool) -> Self {
        base.isGeometryFlipped = isGeometryFlipped
        return self
    }

    @discardableResult
    public func removeFromSuperlayer() -> Self {
        base.removeFromSuperlayer()
        return self
    }

    @discardableResult
    public func sublayers(_ sublayers: [CALayer]?) -> Self {
        base.sublayers = sublayers
        return self
    }

    @discardableResult
    public func addSublayer(_ layer: CALayer) -> Self {
        base.addSublayer(layer)
        return self
    }

    @discardableResult
    public func insertSublayer(_ layer: CALayer, at idx: UInt32) -> Self {
        base.insertSublayer(layer, at: idx)
        return self
    }

    @discardableResult
    public func insertSublayer(_ layer: CALayer, below sibling: CALayer?) -> Self {
        base.insertSublayer(layer, below: sibling)
        return self
    }

    @discardableResult
    public func insertSublayer(_ layer: CALayer, above sibling: CALayer?) -> Self {
        base.insertSublayer(layer, above: sibling)
        return self
    }

    @discardableResult
    public func replaceSublayer(_ oldLayer: CALayer, with newLayer: CALayer) -> Self {
        base.replaceSublayer(oldLayer, with: newLayer)
        return self
    }

    @discardableResult
    public func sublayerTransform(_ sublayerTransform: CATransform3D) -> Self {
        base.sublayerTransform = sublayerTransform
        return self
    }

    @discardableResult
    public func mask(_ mask: CALayer?) -> Self {
        base.mask = mask
        return self
    }

    @discardableResult
    public func masksToBounds(_ masksToBounds: Bool) -> Self {
        base.masksToBounds = masksToBounds
        return self
    }

    @discardableResult
    public func contents(_ contents: Any?) -> Self {
        base.contents = contents
        return self
    }

    @discardableResult
    public func contentsRect(_ contentsRect: CGRect) -> Self {
        base.contentsRect = contentsRect
        return self
    }

    @discardableResult
    public func contentsGravity(_ contentsGravity: CALayerContentsGravity) -> Self {
        base.contentsGravity = contentsGravity
        return self
    }

    @discardableResult
    public func contentsScale(_ contentsScale: CGFloat) -> Self {
        base.contentsScale = contentsScale
        return self
    }

    @discardableResult
    public func contentsCenter(_ contentsCenter: CGRect) -> Self {
        base.contentsCenter = contentsCenter
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func contentsFormat(_ contentsFormat: CALayerContentsFormat) -> Self {
        base.contentsFormat = contentsFormat
        return self
    }

    @discardableResult
    public func minificationFilter(_ minificationFilter: CALayerContentsFilter) -> Self {
        base.minificationFilter = minificationFilter
        return self
    }

    @discardableResult
    public func magnificationFilter(_ magnificationFilter: CALayerContentsFilter) -> Self {
        base.magnificationFilter = magnificationFilter
        return self
    }

    @discardableResult
    public func minificationFilterBias(_ minificationFilterBias: Float) -> Self {
        base.minificationFilterBias = minificationFilterBias
        return self
    }

    @discardableResult
    public func isOpaque(_ isOpaque: Bool) -> Self {
        base.isOpaque = isOpaque
        return self
    }

    @discardableResult
    public func display() -> Self {
        base.display()
        return self
    }

    @discardableResult
    public func setNeedsDisplay() -> Self {
        base.setNeedsDisplay()
        return self
    }

    @discardableResult
    public func setNeedsDisplay(_ r: CGRect) -> Self {
        base.setNeedsDisplay(r)
        return self
    }

    @discardableResult
    public func displayIfNeeded() -> Self {
        base.displayIfNeeded()
        return self
    }

    @discardableResult
    public func needsDisplayOnBoundsChange(_ needsDisplayOnBoundsChange: Bool) -> Self {
        base.needsDisplayOnBoundsChange = needsDisplayOnBoundsChange
        return self
    }

    @discardableResult
    public func drawsAsynchronously(_ drawsAsynchronously: Bool) -> Self {
        base.drawsAsynchronously = drawsAsynchronously
        return self
    }

    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        base.backgroundColor = backgroundColor.cgColor
        return self
    }

    @discardableResult
    public func draw(in ctx: CGContext) -> Self {
        base.draw(in: ctx)
        return self
    }

    @discardableResult
    public func render(in ctx: CGContext) -> Self {
        base.render(in: ctx)
        return self
    }

    @discardableResult
    public func edgeAntialiasingMask(_  edgeAntialiasingMask: CAEdgeAntialiasingMask) -> Self {
        base.edgeAntialiasingMask = edgeAntialiasingMask
        return self
    }

    @discardableResult
    public func allowsEdgeAntialiasing(_ allowsEdgeAntialiasing: Bool) -> Self {
        base.allowsEdgeAntialiasing = allowsEdgeAntialiasing
        return self
    }

    @discardableResult
    public func backgroundColor(_ backgroundColor: CGColor?) -> Self {
        base.backgroundColor = backgroundColor
        return self
    }

    @discardableResult
    public func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        base.cornerRadius = cornerRadius
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func maskedCorners(_ maskedCorners: CACornerMask) -> Self {
        base.maskedCorners = maskedCorners
        return self
    }

    @discardableResult
    public func borderWidth(_ borderWidth: CGFloat) -> Self {
        base.borderWidth = borderWidth
        return self
    }

    @discardableResult
    public func borderColor(_ borderColor: UIColor?) -> Self {
        base.borderColor = borderColor?.cgColor
        return self
    }

    @discardableResult
    public func borderColor(_ borderColor: CGColor?) -> Self {
        base.borderColor = borderColor
        return self
    }

    @discardableResult
    public func opacity(_ opacity: Float) -> Self {
        base.opacity = opacity
        return self
    }

    @discardableResult
    public func allowsGroupOpacity(_ allowsGroupOpacity: Bool) -> Self {
        base.allowsGroupOpacity = allowsGroupOpacity
        return self
    }

    @discardableResult
    public func compositingFilter(_ compositingFilter: Any?) -> Self {
        base.compositingFilter = compositingFilter
        return self
    }

    @discardableResult
    public func filters(_ filters: [Any]?) -> Self {
        base.filters = filters
        return self
    }

    @discardableResult
    public func backgroundFilters(_ backgroundFilters: [Any]?) -> Self {
        base.backgroundFilters = backgroundFilters
        return self
    }

    @discardableResult
    public func shouldRasterize(_ shouldRasterize: Bool) -> Self {
        base.shouldRasterize = shouldRasterize
        return self
    }

    @discardableResult
    public func rasterizationScale(_ rasterizationScale: CGFloat) -> Self {
        base.rasterizationScale = rasterizationScale
        return self
    }

    @discardableResult
    public func shadowColor(_ shadowColor: UIColor) -> Self {
        base.shadowColor = shadowColor.cgColor
        return self
    }
    
    @discardableResult
    public func shadowColor(_ shadowColor: CGColor) -> Self {
        base.shadowColor = shadowColor
        return self
    }

    @discardableResult
    public func shadowOpacity(_ shadowOpacity: Float) -> Self {
        base.shadowOpacity = shadowOpacity
        return self
    }

    @discardableResult
    public func shadowOffset(_ shadowOffset: CGSize) -> Self {
        base.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    public func shadowRadius(_ shadowRadius: CGFloat) -> Self {
        base.shadowRadius = shadowRadius
        return self
    }

    @discardableResult
    public func shadowPath(_ shadowPath: CGPath?) -> Self {
        base.shadowPath = shadowPath
        return self
    }

    @discardableResult
    public func setNeedsLayout() -> Self {
        base.setNeedsLayout()
        return self
    }

    @discardableResult
    public func layoutIfNeeded() -> Self {
        base.layoutIfNeeded()
        return self
    }

    @discardableResult
    public func layoutSublayers() -> Self {
        base.layoutSublayers()
        return self
    }

    @discardableResult
    public func actions(_ actions: [String : CAAction]?) -> Self {
        base.actions = actions
        return self
    }

    @discardableResult
    public func add(_ anim: CAAnimation, forKey key: String?) -> Self {
        base.add(anim, forKey: key)
        return self
    }

    @discardableResult
    public func removeAllAnimations() -> Self {
        base.removeAllAnimations()
        return self
    }

    @discardableResult
    public func removeAnimation(forKey key: String) -> Self {
        base.removeAnimation(forKey: key)
        return self
    }

    @discardableResult
    public func name(_ name: String?) -> Self {
        base.name = name
        return self
    }

    @discardableResult
    public func delegate(_ delegate: CALayerDelegate?) -> Self {
        base.delegate = delegate
        return self
    }

    @discardableResult
    public func style(_ style: [AnyHashable : Any]?) -> Self {
        base.style = style
        return self
    }
}
