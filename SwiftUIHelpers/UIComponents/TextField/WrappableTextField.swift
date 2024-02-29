//
//  WrappableTextField.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 29.02.24.
//

import Foundation
import UIKit

class WrappableTextField: UITextField {
    var onCommit: ((String) -> Void)?
    
    private let padding = UIEdgeInsets(top: 14, left: 24, bottom: 14, right: 24)
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: padding)
    }
}

extension WrappableTextField: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let nextField = textField.superview?.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        onCommit?(textField.text ?? "")
    }
}
