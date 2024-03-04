//
//  ContentText.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 4.03.24.
//

import SwiftUI

struct ContentText: View {
    private var splitText: [String]
    let count: Int

    init(_ text: String) {
        self.splitText = text.split(separator: " ").map { "\($0) " }
        if text.hasPrefix(" ") {
            self.splitText = [" "] + self.splitText
        }

        self.count = splitText.count
    }

    var body: some View {
        ForEach(self.splitText.indices) { index in
            Text(splitText[index])
        }
    }
}
#Preview {
    ContentText("Hellow")
}
