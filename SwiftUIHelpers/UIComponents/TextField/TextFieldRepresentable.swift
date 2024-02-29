//
//  TextFieldRepresentable.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 29.02.24.
//

import SwiftUI

struct TextFieldRepresentable: UIViewRepresentable {
    let textfield = WrappableTextField()
    let placeholder: String
    let tag: Int
    let textContentType: UITextContentType
    let keyboardType: UIKeyboardType
    let returnKeyType: UIReturnKeyType
    let isSecureTextEntry: Bool
    var onCommit: ((String) -> Void)?
    
    init(
        placeholder: String,
        tag: Int,
        textContentType: UITextContentType = .oneTimeCode,
        keyboardType: UIKeyboardType = .default,
        returnKeyType: UIReturnKeyType = .next,
        isSecureTextEntry: Bool = false,
        onCommit: ((String) -> Void)?
    ) {
        self.placeholder = placeholder
        self.tag = tag
        self.textContentType = textContentType
        self.keyboardType = keyboardType
        self.returnKeyType = returnKeyType
        self.isSecureTextEntry = isSecureTextEntry
        self.onCommit = onCommit
    }
    
        
    func makeUIView(context: Context) -> WrappableTextField {
        textfield.tag = tag
        textfield.delegate = textfield
        textfield.onCommit = onCommit
        
        textfield.isSecureTextEntry = isSecureTextEntry
        textfield.keyboardType = keyboardType
        textfield.returnKeyType = returnKeyType
        textfield.textContentType = textContentType
        
        textfield.autocapitalizationType = .none
        textfield.autocorrectionType = .no
        
        textfield.placeholder = placeholder
        textfield.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.c848388]
        )
        textfield.textColor = .white
        
        textfield.layer.borderWidth = 1
        textfield.layer.borderColor = UIColor.c282A2E.cgColor
        textfield.layer.cornerRadius = 24
        return textfield
    }
    
    func updateUIView(_ uiView: WrappableTextField, context: Context) {
        
    }
    
    
}
