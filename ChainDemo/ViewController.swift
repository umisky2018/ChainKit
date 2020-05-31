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
            $0  .makeDefaultView()
        }

        UIView.chain.make {
            $0  .makeDefaultShdow()
                .frame(x: 100, y: 200, width: 200, height: 200)
                .background(color: Theme.current.mainColor)
                .addTapGesture(action: { [weak self] in
                    guard let this = self else { return }
                    let ctrl = ViewController()
                    this.navigationController?.pushViewController(ctrl, animated: true)
                })
                .addTapGesture(action: {
                    print("tap_1")
                })
                .addTapGesture(action: {
                    print("tap_2")
                })
                .add(to: self.view)
        }
    }
    
    deinit {
        print("销毁 vc")
    }
}
