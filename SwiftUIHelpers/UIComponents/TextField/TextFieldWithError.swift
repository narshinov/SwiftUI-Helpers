//
//  TextFieldWithError.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 4.03.24.
//

import SwiftUI

struct TextFieldWithError: View {
    @State private var isValid = true
    var body: some View {
        VStack(alignment: .leading) {
            TextFieldRepresentable(
                placeholder: "Hellow",
                tag: .zero
            ) { result in
                isValid = !result.isEmpty
            }
            .frame(height: 48)
            Text("Error")
                .foregroundStyle(.red)
                .padding(.leading)
                .isHidden(isValid)
        }.padding()
        
    }
}

#Preview {
    TextFieldWithError()
}
