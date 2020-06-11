# ChainKit
Swift 链式编程库，持续更新中……

![License](https://img.shields.io/cocoapods/l/ApplyStyleKit.svg?style=flat)
![Platform](https://img.shields.io/cocoapods/p/ApplyStyleKit.svg?style=flat)


## Installation

### Requirements

* iOS  10.0 or later
* Swift 5.0
* Xcode 11.0

### Carthage

```
TODO:
```



### CocoaPods

```
TODO:
```

## 使用

```Swift
let button = UIButton(type: .system)

// 配置 UI 样式
button.chain
    .frame(x: 100, y: 500, width: 200, height: 45)
    .addTarget(self, action: #selector(aaa))
    .title(text: "Button", for: .normal)
    .title(front: .systemFont(ofSize: 24))
    .add(to: self.view)

// 添加按钮事件
button.chain
    .frame(x: 100, y: 500, width: 200, height: 45)
    .addTarget(self, action: #selector(buttonAction(sender:)))
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

// UIView 可以添加 tap 事件
UIView().chain
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
```

### 进阶

自定义函数

```swift
extension Chain where Base: UILabel {
    
    @discardableResult
    public func makeDefaultLabel() -> Self {
        self.backgroundColor(.yellow)
            .textAlignment(.center)
            .text(color: .green)
            .font(.boldSystemFont(ofSize: 30))
            .numberOfLines(0)
            .origin(x: 100, y: 300)
        return self
    }
}
```

## 开源协议

[MIT 协议](<https://github.com/umisky2018/ChainKit/blob/master/LICENSE>)
