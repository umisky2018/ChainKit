//
//  Theme.swift
//  ChainDemo
//
//  Created by umisky on 2020/5/23.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

enum Theme {
    
    case light
    
    case dark
}

extension Theme {
    
    static var current: Theme {
        return .dark
    }
}

extension Theme {
    
    var backgroundColor: UIColor {
        switch self {
        case .light: return #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        case .dark: return #colorLiteral(red: 0.1490196078, green: 0.1647058824, blue: 0.2117647059, alpha: 1)
        }
    }
    
    var mainColor: UIColor {
        switch self {
        case .light: return #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        case .dark: return #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        }
    }
    
    var shadowColor: UIColor {
        switch self {
        case .light: return #colorLiteral(red: 0.1490196078, green: 0.1647058824, blue: 0.2117647059, alpha: 1)
        case .dark: return #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        }
    }
}
