//
//  View+Extensions.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 4.03.24.
//

import SwiftUI

extension View {

    // MARK: isHidden implentation in SwiftUI

    func isHidden(_ isHidden: Bool) -> some View {
        ModifiedContent(
            content: self,
            modifier: HideViewModifier(isHidden: isHidden)
        )
    }
}
