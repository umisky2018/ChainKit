//
//  UIScrollView+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/6/5.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension Chain where Base: UIScrollView {
    
    @discardableResult
    public func delegate(_ delegate: UIScrollViewDelegate?) -> Self {
        base.delegate = delegate
        return self
    }

    @discardableResult
    public func contentOffset(_ contentOffset: CGPoint) -> Self {
        base.contentOffset = contentOffset
        return self
    }

    @discardableResult
    public func contentSize(_ contentSize: CGSize) -> Self {
        base.contentSize = contentSize
        return self
    }

    @discardableResult
    public func contentInset(_ contentInset: UIEdgeInsets) -> Self {
        base.contentInset = contentInset
        return self
    }

    @discardableResult
    public func isDirectionalLockEnabled(_ isDirectionalLockEnabled: Bool) -> Self {
        base.isDirectionalLockEnabled = isDirectionalLockEnabled
        return self
    }

    @discardableResult
    public func bounces(_ bounces: Bool) -> Self {
        base.bounces = bounces
        return self
    }

    @discardableResult
    public func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> Self {
        base.alwaysBounceVertical = alwaysBounceVertical
        return self
    }

    @discardableResult
    public func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> Self {
        base.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }

    @discardableResult
    public func isPagingEnabled(_ isPagingEnabled: Bool) -> Self {
        base.isPagingEnabled = isPagingEnabled
        return self
    }

    @discardableResult
    public func isScrollEnabled(_ isScrollEnabled: Bool) -> Self {
        base.isScrollEnabled = isScrollEnabled
        return self
    }

    @discardableResult
    public func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> Self {
        base.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }

    @discardableResult
    public func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> Self {
        base.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }

    @discardableResult
    public func scrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets) -> Self {
        base.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }

    @discardableResult
    public func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> Self {
        base.indicatorStyle = indicatorStyle
        return self
    }

    @discardableResult
    public func decelerationRate(_ decelerationRate: CGFloat) -> Self {
        base.decelerationRate = UIScrollView.DecelerationRate(rawValue: decelerationRate)
        return self
    }

    @discardableResult
    public func delaysContentTouches(_ delaysContentTouches: Bool) -> Self {
        base.delaysContentTouches = delaysContentTouches
        return self
    }

    @discardableResult
    public func canCancelContentTouches(_ canCancelContentTouches: Bool) -> Self {
        base.canCancelContentTouches = canCancelContentTouches
        return self
    }

    @discardableResult
    public func minimumZoomScale(_ minimumZoomScale: CGFloat) -> Self {
        base.minimumZoomScale = minimumZoomScale
        return self
    }

    @discardableResult
    public func maximumZoomScale(_ maximumZoomScale: CGFloat) -> Self {
        base.maximumZoomScale = maximumZoomScale
        return self
    }

    @discardableResult
    public func zoomScale(_ zoomScale: CGFloat) -> Self {
        base.zoomScale = zoomScale
        return self
    }

    @discardableResult
    public func bouncesZoom(_ bouncesZoom: Bool) -> Self {
        base.bouncesZoom = bouncesZoom
        return self
    }

    @discardableResult
    public func scrollsToTop(_ scrollsToTop: Bool) -> Self {
        base.scrollsToTop = scrollsToTop
        return self
    }

    @discardableResult
    public func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> Self {
        base.keyboardDismissMode = keyboardDismissMode
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func refreshControl(_ refreshControl: UIRefreshControl?) -> Self {
        base.refreshControl = refreshControl
        return self
    }
}
