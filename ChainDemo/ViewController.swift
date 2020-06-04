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
        
        let label = UILabel()
        label.chain
            .backgroundColor(.yellow)
            .text("sample label")
            .textAlignment(.center)
            .text(color: .green)
            .font(.boldSystemFont(ofSize: 30))
            .numberOfLines(0)
            .sizeToFit()
            .add(to: self.view)
            .origin(x: 100, y: 300)
            .userInteractionEnabled(true)
            .tap(action: {
                print("响应")
            })
    
        UIButton(type: .system).chain
            .makeMainColor()
            .makeDefaultShdow()
            .frame(x: 100, y: 500, width: 200, height: 45)
            .addTarget(self, action: #selector(aaa))
            .title(text: "Button", for: .normal)
            .title(front: .systemFont(ofSize: 24))
            .addAction(for: [.touchDown, .touchDragEnter], action: {
                $0  .makeLightShdow()
                    .title(front: .systemFont(ofSize: 22))
            })
            .addAction(for: [.touchUpOutside, .touchUpInside, .touchCancel, .touchDragExit], action: {
                $0  .makeDefaultShdow()
                    .title(front: .systemFont(ofSize: 24))
            })
            .add(to: self.view)
        
        UIView().chain
            .makeMainColor()
            .makeDefaultShdow()
            .frame(x: 100, y: 200, width: 200, height: 40)
            .corner(radius: 20)
            .tap(action: {
                print("456")
            })
            .tap(action: { [weak self] in
                guard let this = self else { return }
                this.navigationController?.pushViewController(ViewController(), animated: true)
            })
            .tap(action: {
                print("789")
            })
            .add(to: self.view)
        
        UITapGestureRecognizer().chain
            .addTapAction(action: { rec in
                print("012")
            })
            .add(to: self.view)
    }
    
    @objc
    func aaa() {
        print("123")
    }
    
    deinit {
        print("deinit \(type(of: self))")
    }
}
