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
        
        self.view.chain.make {
            $0.makeDefaultView()
        }
        
        UIView.chain.make {
            $0  .makeDefaultShdow()
                .frame(x: 100, y: 200, width: 100, height: 100)
                .background(color: Theme.current.mainColor)
                .corner(radius: 50)
                .add(to: self.view)
        }
    }    
}
