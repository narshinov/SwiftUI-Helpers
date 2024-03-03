//
//  InterestsType.swift
//  SwiftUIHelpers
//
//  Created by Nikita Arshinov on 3.03.24.
//

import SwiftUI

enum InterestsType: CaseIterable {
    case move
    case art
    case money
    case sport
    case business
    case music
    case fashion
    case travel
    case gaming
    case technology
    case horny
    case fintnes
    case cookings
    case passion
    case goals
    
    var image: Image {
        switch self {
        case .move:
            Image(.movieIc)
        case .art:
            Image(.artIc)
        case .money:
            Image(.moneyIc)
        case .sport:
            Image(.sportIc)
        case .business:
            Image(.businesIc)
        case .music:
            Image(.musicIs)
        case .fashion:
            Image(.fashionIc)
        case .travel:
            Image(.travelIc)
        case .gaming:
            Image(.gamingIc)
        case .technology:
            Image(.techIc)
        case .horny:
            Image(.hornyIc)
        case .fintnes:
            Image(.fitnesIc)
        case .cookings:
            Image(.cookingIc)
        case .passion:
            Image(.passionIc)
        case .goals:
            Image(.goalsIc)
        }
    }
    
    var title: String {
        switch self {
        case .move:
            "Movie"
        case .art:
            "Art"
        case .money:
            "Money"
        case .sport:
            "Sport"
        case .business:
            "Business"
        case .music:
            "Music"
        case .fashion:
            "Fashion"
        case .travel:
            "Travel"
        case .gaming:
            "Gaming"
        case .technology:
            "Technology"
        case .horny:
            "Horny & Kinky"
        case .fintnes:
            "Fitness"
        case .cookings:
            "Cooking & Food"
        case .passion:
            "Passion"
        case .goals:
            "Life goals"
        }
    }
}
