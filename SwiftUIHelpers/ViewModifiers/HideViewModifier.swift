//
//  HideViewModifier.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 4.03.24.
//

import SwiftUI

// MARK: Modifier for implementation isHidden func

struct HideViewModifier: ViewModifier {
    let isHidden: Bool
    @ViewBuilder
    func body(content: Content) -> some View {
        if isHidden {
            EmptyView()
        } else {
            content
        }
    }
}
