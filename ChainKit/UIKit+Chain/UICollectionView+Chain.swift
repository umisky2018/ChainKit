//
//  UICollectionView+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/6/5.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension Chain where Base: UICollectionView {
    
    @discardableResult
    public func dataSource(_ dataSource: UICollectionViewDataSource?) -> Self {
        base.dataSource = dataSource
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func prefetchDataSource(_ prefetchDataSource: UICollectionViewDataSourcePrefetching?) -> Self {
        base.prefetchDataSource = prefetchDataSource
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    public func isPrefetchingEnabled(_ isPrefetchingEnabled: Bool) -> Self {
        base.isPrefetchingEnabled = isPrefetchingEnabled
        return self
    }
    
    @discardableResult
    public func backgroundView(_ backgroundView: UIView?) -> Self {
        base.backgroundView = backgroundView
        return self
    }
    
    @discardableResult
    public func allowsSelection(_ allowsSelection: Bool) -> Self {
        base.allowsSelection = allowsSelection
        return self
    }
    
    @discardableResult
    public func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> Self {
        base.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
    
    @discardableResult
    public func remembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool) -> Self {
        base.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath
        return self
    }
}
