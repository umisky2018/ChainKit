//
//  Associate.swift
//  ChainKit
//
//  Created by umisky on 2020/5/31.
//  Copyright © 2020 chenshu. All rights reserved.
//

import Foundation

/// [Object Only]获取指定持有者键对应的关联对象，如果没有，就构建一个。
/// - Parameters:
///   - host: 持有者
///   - key: 键
///   - initial: 初始化函数
/// - Returns: 值
internal func associatedObject<T>(_ host: AnyObject, key: UnsafeRawPointer, initial: () -> T) -> T {
    var value = objc_getAssociatedObject(host, key) as? T
    if value == nil {
        value = initial()
        objc_setAssociatedObject(host, key, value, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    return value!
}

/// [Object Only]存储数据
/// - Parameters:
///   - host: 持有者
///   - key: 键
///   - value: 值
internal func setAssociatedObject<T>(_ host: AnyObject, key: UnsafeRawPointer, value: T) {
    objc_setAssociatedObject(host, key, value, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
}

/// [Object Only]读取数据
/// - Parameters:
///   - host: 持有者
///   - key: 键
/// - Returns: 值
internal func getAssociatedObject<T>(_ host: AnyObject, key: UnsafeRawPointer) -> T? {
    let value = objc_getAssociatedObject(host, key) as? T
    return value
}

/// 日志
internal func logger(_ item: Any) {
    #if DEBUG
    print(item)
    #endif
}
