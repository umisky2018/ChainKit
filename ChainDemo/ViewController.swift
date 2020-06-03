//
//  ViewController.swift
//  ChainDemo
//
//  Created by umisky on 2020/5/23.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit
import ChainKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.chain
            .makeDefaultView()
        
        UIButton().chain
            .makeMainColor()
            .makeDefaultShdow()
            .frame(x: 100, y: 200, width: 200, height: 100)
            .corner(radius: 50)
            .addTap(target: self, action: #selector(aaa))
            .addAction(action: { _ in
                print("456")
            })
            .add(to: self.view)
    }
    
    @objc
    func aaa() {
        print("123")
    }
    
    deinit {
        print("销毁 vc")
    }
}
