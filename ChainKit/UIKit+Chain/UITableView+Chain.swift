//
//  UITableView+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/6/5.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension Chain where Base: UITableView {
    
    @discardableResult
    public func dataSource(_ dataSource: UITableViewDataSource?) -> Self {
        base.dataSource = dataSource
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    public func prefetchDataSource(_ prefetchDataSource: UITableViewDataSourcePrefetching?) -> Self {
        base.prefetchDataSource = prefetchDataSource
        return self
    }

    @discardableResult
    public func rowHeight(_ rowHeight: CGFloat) -> Self {
        base.rowHeight = rowHeight
        return self
    }

    @discardableResult
    public func sectionHeaderHeight(_ sectionHeaderHeight: CGFloat) -> Self {
        base.sectionHeaderHeight = sectionHeaderHeight
        return self
    }

    @discardableResult
    public func sectionFooterHeight(_ sectionFooterHeight: CGFloat) -> Self {
        base.sectionFooterHeight = sectionFooterHeight
        return self
    }

    @discardableResult
    public func estimatedRowHeight(_ estimatedRowHeight: CGFloat) -> Self {
        base.estimatedRowHeight = estimatedRowHeight
        return self
    }

    @discardableResult
    public func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat) -> Self {
        base.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
        return self
    }

    @discardableResult
    public func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat) -> Self {
        base.estimatedSectionFooterHeight = estimatedSectionFooterHeight
        return self
    }

    @discardableResult
    public func separatorInset(_ separatorInset: UIEdgeInsets) -> Self {
        base.separatorInset = separatorInset
        return self
    }

    @discardableResult
    public func backgroundView(_ backgroundView: UIView?) -> Self {
        base.backgroundView = backgroundView
        return self
    }

    @discardableResult
    public func isEditing(_ isEditing: Bool) -> Self {
        base.isEditing = isEditing
        return self
    }

    @discardableResult
    public func allowsSelection(_ allowsSelection: Bool) -> Self {
        base.allowsSelection = allowsSelection
        return self
    }

    @discardableResult
    public func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool) -> Self {
        base.allowsSelectionDuringEditing = allowsSelectionDuringEditing
        return self
    }

    @discardableResult
    public func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> Self {
        base.allowsMultipleSelection = allowsMultipleSelection
        return self
    }

    @discardableResult
    public func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool) -> Self {
        base.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing
        return self
    }

    @discardableResult
    public func sectionIndexMinimumDisplayRowCount(_ sectionIndexMinimumDisplayRowCount: Int) -> Self {
        base.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount
        return self
    }

    @discardableResult
    public func sectionIndexColor(_ sectionIndexColor: UIColor?) -> Self {
        base.sectionIndexColor = sectionIndexColor
        return self
    }

    @discardableResult
    public func sectionIndexBackgroundColor(_ sectionIndexBackgroundColor: UIColor?) -> Self {
        base.sectionIndexBackgroundColor = sectionIndexBackgroundColor
        return self
    }

    @discardableResult
    public func sectionIndexTrackingBackgroundColor(_ sectionIndexTrackingBackgroundColor: UIColor?) -> Self {
        base.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor
        return self
    }

    @discardableResult
    public func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> Self {
        base.separatorStyle = separatorStyle
        return self
    }

    @discardableResult
    public func separatorColor(_ separatorColor: UIColor?) -> Self {
        base.separatorColor = separatorColor
        return self
    }

    @discardableResult
    public func separatorEffect(_ separatorEffect: UIVisualEffect?) -> Self {
        base.separatorEffect = separatorEffect
        return self
    }

    @discardableResult
    public func cellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth: Bool) -> Self {
        base.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth
        return self
    }

    @discardableResult
    public func tableHeaderView(_ tableHeaderView: UIView?) -> Self {
        base.tableHeaderView = tableHeaderView
        return self
    }

    @discardableResult
    public func tableFooterView(_ tableFooterView: UIView?) -> Self {
        base.tableFooterView = tableFooterView
        return self
    }

    @discardableResult
    public func remembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool) -> Self {
        base.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath
        return self
    }
}
