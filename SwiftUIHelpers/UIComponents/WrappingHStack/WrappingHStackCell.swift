//
//  WrappingHStackCell.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 3.03.24.
//

import SwiftUI

struct WrappingHStackCell: View {
    @Binding var model: WrappingHStackCellModel

    var body: some View {
        HStack {
            model.type.image
                .frame(width: 24, height: 24)
            Text(model.type.title)
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(.white)
        }
        .padding(.vertical, 6)
        .padding(.horizontal, 10)
        .background {
            RoundedRectangle(cornerRadius: 16)
                .fill(backgroundGradient)
                .opacity(model.isSelected ? 1 : 0)
            RoundedRectangle(cornerRadius: 16)
                .stroke(lineWidth: 2)
                .foregroundStyle(.c281040)
                .opacity(model.isSelected ? 0 : 1)
        }
        .onTapGesture {
            model.isSelected.toggle()
        }
    }
}

private extension WrappingHStackCell {
    var backgroundGradient:LinearGradient{
        LinearGradient(
            gradient: Gradient(
                colors: [.c7B01F2, .c5A00B1, .c440086]
            ),
            startPoint: .top,
            endPoint: .bottom
        )
    }
}

#Preview {
    WrappingHStackCell(model: .constant(.init(type: .art)))
}
