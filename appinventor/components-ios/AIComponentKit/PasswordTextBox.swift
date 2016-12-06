//
//  PasswordTextBox.swift
//  AIComponentKit
//
//  Created by Evan Patton on 12/1/16.
//  Copyright © 2016 MIT Center for Mobile Learning. All rights reserved.
//

import Foundation

fileprivate class TextBoxAdapter: AbstractMethodsForTextBox {
  fileprivate let _field = UITextField(frame: CGRect.zero)

  fileprivate init() {
    _field.isSecureTextEntry = true
  }

  public var view: UIView {
    get {
      return _field
    }
  }

  public var alignment: NSTextAlignment {
    get {
      return _field.textAlignment
    }
    set(alignment) {
      _field.textAlignment = alignment
    }
  }

  public var backgroundColor: UIColor? {
    get {
      return _field.backgroundColor
    }
    set(color) {
      _field.backgroundColor = color
    }
  }

  public var textColor: UIColor? {
    get {
      return _field.textColor
    }
    set(color) {
      _field.textColor = color
    }
  }

  public var font: UIFont {
    get {
      return _field.font!
    }
    set(font) {
      _field.font = font
    }
  }

  public var placeholderText: String? {
    get {
      return _field.placeholder
    }
    set(text) {
      _field.placeholder = text
    }
  }

  public var text: String? {
    get {
      return _field.text
    }
    set(text) {
      _field.text = text
    }
  }
}

public class PasswordTextBox: TextBoxBase {
  private let _adapter = TextBoxAdapter()

  public init(_ parent: ComponentContainer) {
    super.init(parent, _adapter)
  }
}
