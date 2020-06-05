//
//  UITextView+Chain.swift
//  ChainKit
//
//  Created by umisky on 2020/6/5.
//  Copyright © 2020 chenshu. All rights reserved.
//

import UIKit

extension Chain where Base: UITextView {
    
    @discardableResult
    public func text(_ text: String?) -> Self {
        base.text = text
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont) -> Self {
        base.font = font
        return self
    }
    
    @discardableResult
    public func textColor(_ textColor: UIColor?) -> Self {
        base.textColor = textColor
        return self
    }
    
    @discardableResult
    public func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        base.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    public func selectedRange(_ selectedRange: NSRange) -> Self {
        base.selectedRange = selectedRange
        return self
    }
    
    @discardableResult
    public func isEditable(_ isEditable: Bool) -> Self {
        base.isEditable = isEditable
        return self
    }
    
    @discardableResult
    public func isSelectable(_ isSelectable: Bool) -> Self {
        base.isSelectable = isSelectable
        return self
    }
    
    @discardableResult
    public func dataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes) -> Self {
        base.dataDetectorTypes = dataDetectorTypes
        return self
    }
    
    @discardableResult
    public func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> Self {
        base.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    @discardableResult
    public func attributedText(_ attributedText: NSAttributedString?) -> Self {
        base.attributedText = attributedText
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
    
    @discardableResult
    public func textContainerInset(_ textContainerInset: UIEdgeInsets) -> Self {
        base.textContainerInset = textContainerInset
        return self
    }
    
    @discardableResult
    public func linkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key: Any]?) -> Self {
        base.linkTextAttributes = linkTextAttributes
        return self
    }
    
    @discardableResult
    public func autocapitalizationType(_ autocapitalizationType: UITextAutocapitalizationType) -> Self {
        base.autocapitalizationType = autocapitalizationType
        return self
    }
    
    @discardableResult
    public func autocorrectionType(_ autocorrectionType: UITextAutocorrectionType) -> Self {
        base.autocorrectionType = autocorrectionType
        return self
    }
    
    @discardableResult
    public func spellCheckingType(_ spellCheckingType: UITextSpellCheckingType) -> Self {
        base.spellCheckingType = spellCheckingType
        return self
    }
    
    @discardableResult
    public func keyboardType(_ keyboardType: UIKeyboardType) -> Self {
        base.keyboardType = keyboardType
        return self
    }
    
    @discardableResult
    public func keyboardAppearance(_ keyboardAppearance: UIKeyboardAppearance) -> Self {
        base.keyboardAppearance = keyboardAppearance
        return self
    }
    
    @discardableResult
    public func returnKeyType(_ returnKeyType: UIReturnKeyType) -> Self {
        base.returnKeyType = returnKeyType
        return self
    }
    
    @discardableResult
    public func enablesReturnKeyAutomatically(_ enablesReturnKeyAutomatically: Bool) -> Self {
        base.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically
        return self
    }
    
    @discardableResult
    public func isSecureTextEntry(_ isSecureTextEntry: Bool) -> Self {
        base.isSecureTextEntry = isSecureTextEntry
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    public func textContentType(_ textContentType: UITextContentType) -> Self {
        base.textContentType = textContentType
        return self
    }
}
