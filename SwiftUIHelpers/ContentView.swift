//
//  ContentView.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 29.02.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    TextFieldExempleContentView()
                } label: {
                    Label("TextFieldRepresentable", systemImage: "textformat")
                }
                
                NavigationLink {
                    TextFieldWithError()
                } label: {
                    Label("TextFieldWithError", systemImage: "textformat")
                }
                
                NavigationLink {
                    WrappingHStackContentView()
                } label: {
                    Label("WrappingHStack", systemImage: "rectangle.stack")
                }
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
