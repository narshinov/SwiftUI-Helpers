//
//  LinkedText.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 4.03.24.
//

import SwiftUI

enum ContentTextType<T: View> {
    case text(ContentText)
    case link(Button<T>)
}

struct LinkedText: View {
    let content: [ContentTextType<Text>]

    @State private var height: CGFloat = 0
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                ZStack(alignment: .topLeading) {
                    self.zStackViews(geometry)
                }
                .background(calculateHeight($height))
            }
        }
        .frame(height: height)
    }
    
    func zStackViews(_ geometry: GeometryProxy) -> some View {
        var horizontal: CGFloat = 0
        var vertical: CGFloat = 0

        func forEachView(_ index: Int) -> some View {
            let numberOfViewsInContent: Int
            let view: AnyView
            
            switch content[index] {
            case .text(let text):
                numberOfViewsInContent = text.count
                view = AnyView(text)
            case .link(let link):
                numberOfViewsInContent = 1
                view = AnyView(link)
            }
            
            var numberOfViewsRendered = 0
            return view
                .alignmentGuide(.leading, computeValue: { dimension in
                    numberOfViewsRendered += 1
                    
                    let viewShouldBePlacedOnNextLine = geometry.size.width < -1 * (horizontal - dimension.width)
                    if viewShouldBePlacedOnNextLine {
                        vertical -= dimension.height
                        horizontal = -dimension.width
                        return 0
                    }
                    
                    let result = horizontal
                    horizontal -= dimension.width
                    
                    return result
                })
                .alignmentGuide(.top, computeValue: { _ in
                    let result = vertical
                    let isLastView = index == content.indices.last && numberOfViewsRendered == numberOfViewsInContent
                    if isLastView {
                        vertical = 0
                        horizontal = 0
                        numberOfViewsRendered = 0
                    }
                    
                    return result
                })
        }
        
        return ForEach(content.indices, content: forEachView)
    }
    
    func calculateHeight(_ binding: Binding<CGFloat>) -> some View {
        GeometryReader { geometry -> Color in
            DispatchQueue.main.async {
                binding.wrappedValue = geometry.frame(in: .local).height
            }
            
            return .clear
        }
    }
}

#Preview {
    LinkedText(
        content: [
            .text(.init("I agree to ")),
            .link(.init("Terms of Service") { print("Terms") }),
            .text(.init(" and ")),
            .link(.init("Privacy Policy") { print("Policy") })
        ]
    )
}
