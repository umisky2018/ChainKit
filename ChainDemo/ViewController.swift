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
        
        UIButton(type: .system).chain
            .makeMainColor()
            .makeDefaultShdow()
            .frame(x: 100, y: 500, width: 200, height: 45)
            .addTarget(self, action: #selector(aaa))
            .title(text: "Button", for: .normal)
            .title(front: .systemFont(ofSize: 24))
            .addAction(for: [.touchDown, .touchDragEnter], action: {
                $0.chain
                    .makeLightShdow()
                    .title(front: .systemFont(ofSize: 22))
            })
            .addAction(for: [.touchUpOutside, .touchUpInside, .touchCancel, .touchDragExit], action: {
                $0.chain
                    .makeDefaultShdow()
                    .title(front: .systemFont(ofSize: 24))
            })
            .add(to: self.view)
        
         let v = UIView().chain
            .makeMainColor()
            .makeDefaultShdow()
            .frame(x: 100, y: 200, width: 200, height: 40)
            .corner(radius: 50)
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
            .clipsToBounds(true)
            .base
        
        UIImageView(image: UIImage(named: "cheerUp")).chain
            .add(to: v)
        
        UITapGestureRecognizer().chain
            .addTapAction(action: { _ in
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
