//
//  UITextFiled+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/6/5.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension Chain where Base: UITextField {
    
    @discardableResult
    public func text(_ text: String?) -> Self {
        base.text = text
        return self
    }

    @discardableResult
    public func attributedText(_ attributedText: NSAttributedString?) -> Self {
        base.attributedText = attributedText
        return self
    }

    @discardableResult
    public func text(color: UIColor?) -> Self {
        base.textColor = color
        return self
    }

    @discardableResult
    public func font(_ font: UIFont?) -> Self {
        base.font = font
        return self
    }

    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        base.textAlignment = textAlignment
        return self
    }

    @discardableResult
    public func borderStyle(_ borderStyle: UITextField.BorderStyle) -> Self {
        base.borderStyle = borderStyle
        return self
    }

    @discardableResult
    public func defaultTextAttributes(_ defaultTextAttributes: [NSAttributedString.Key : Any]) -> Self {
        base.defaultTextAttributes = defaultTextAttributes
        return self
    }

    @discardableResult
    public func placeholder(_ placeholder: String?) -> Self {
        base.placeholder = placeholder
        return self
    }

    @discardableResult
    public func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> Self {
        base.attributedPlaceholder = attributedPlaceholder
        return self
    }

    @discardableResult
    public func clearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> Self {
        base.clearsOnBeginEditing = clearsOnBeginEditing
        return self
    }

    @discardableResult
    public func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        base.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }

    @discardableResult
    public func minimumFontSize(_ minimumFontSize: CGFloat) -> Self {
        base.minimumFontSize = minimumFontSize
        return self
    }

    @discardableResult
    public func delegate(_ delegate: UITextFieldDelegate?) -> Self {
        base.delegate = delegate
        return self
    }

    @discardableResult
    public func background(_ background: UIImage?) -> Self {
        base.background = background
        return self
    }

    @discardableResult
    public func disabledBackground(_ disabledBackground: UIImage?) -> Self {
        base.disabledBackground = disabledBackground
        return self
    }

    @discardableResult
    public func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> Self {
        base.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }

    @discardableResult
    public func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]?) -> Self {
        base.typingAttributes = typingAttributes
        return self
    }

    @discardableResult
    public func clearButtonMode(_ clearButtonMode: UITextField.ViewMode) -> Self {
        base.clearButtonMode = clearButtonMode
        return self
    }

    @discardableResult
    public func leftView(_ leftView: UIView?) -> Self {
        base.leftView = leftView
        return self
    }

    @discardableResult
    public func leftViewMode(_ leftViewMode: UITextField.ViewMode) -> Self {
        base.leftViewMode = leftViewMode
        return self
    }

    @discardableResult
    public func rightView(_ rightView: UIView?) -> Self {
        base.rightView = rightView
        return self
    }

    @discardableResult
    public func rightViewMode(_ rightViewMode: UITextField.ViewMode) -> Self {
        base.rightViewMode = rightViewMode
        return self
    }

    @discardableResult
    public func drawText(in rect: CGRect) -> Self {
        base.drawText(in: rect)
        return self
    }

    @discardableResult
    public func drawPlaceholder(in rect: CGRect) -> Self {
        base.drawPlaceholder(in: rect)
        return self
    }

    @discardableResult
    public func inputView(_ inputView: UIView?) -> Self {
        base.inputView = inputView
        return self
    }

    @discardableResult
    public func inputAccessoryView(_ inputAccessoryView: UIView?) -> Self {
        base.inputAccessoryView = inputAccessoryView
        return self
    }

    @discardableResult
    public func clearsOnInsertion(_ clearsOnInsertion: Bool) -> Self {
        base.clearsOnInsertion = clearsOnInsertion
        return self
    }
}
