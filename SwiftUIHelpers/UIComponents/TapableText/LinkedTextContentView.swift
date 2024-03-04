//
//  LinkedTextContentView.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 4.03.24.
//

import SwiftUI

struct LinkedTextContentView: View {
    private let content: [ContentTextType<Text>] = [
        .text(.init("I agree to ")),
        .link(.init("Terms of Service") { print("Terms") }),
        .text(.init(" and ")),
        .link(.init("Privacy Policy") { print("Policy") })
    ]

    var body: some View {
        HStack {
            Image(systemName: "checkmark.square")
                .frame(width: 64, height: 64)
            LinkedText(content: content)
        }
        
    }
}

#Preview {
    LinkedTextContentView()
}
