//
//  TextFieldExempleContentView.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 29.02.24.
//

import SwiftUI

struct TextFieldExempleContentView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                TextFieldRepresentable(
                    placeholder: "Name",
                    tag: 0,
                    textContentType: .name
                ) {
                    print($0)
                }
                .frame(height: 48)
                
                TextFieldRepresentable(
                    placeholder: "Email",
                    tag: 1,
                    keyboardType: .emailAddress
                ) {
                    print($0)
                }
                .frame(height: 48)
                
                TextFieldRepresentable(
                    placeholder: "Password",
                    tag: 2,
                    textContentType: .password,
                    returnKeyType: .done,
                    isSecureTextEntry: true
                ) {
                    print($0)
                }
                .frame(height: 48)
                
            }.padding(.horizontal)
        }.background(.black)
        
    }
}

#Preview {
    TextFieldExempleContentView()
}
