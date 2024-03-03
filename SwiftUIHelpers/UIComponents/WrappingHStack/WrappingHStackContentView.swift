//
//  WrappingHStackContentView.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 3.03.24.
//

import SwiftUI

struct WrappingHStackContentView: View {
    @State private var interests: [WrappingHStackCellModel] =
        InterestsType.allCases.map {
                .init(type: $0)
        }
    

    var body: some View {
        VStack {
            HStack {
                WrappingHStack(alignment: .center) {
                    ForEach($interests, id: \.self) {
                        WrappingHStackCell(model: $0)
                    }
                }.padding(36)
            }
            Spacer()
            Button("Continue") {
                let selected = interests.filter {
                    $0.isSelected
                }
                print(selected)
            }
        }
        .background{
            Image(.background)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    WrappingHStackContentView()
}
