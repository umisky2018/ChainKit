//
//  AppDelegate.swift
//  ChainDemo
//
//  Created by umisky on 2020/5/23.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let ctrl = UINavigationController(rootViewController: ViewController())
        self.window = UIWindow()
        self.window?.rootViewController = ctrl
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

