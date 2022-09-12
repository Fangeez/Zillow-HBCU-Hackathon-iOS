//
//  BuyerCandidacy.swift
//  Z-Save
//
//  Created by Harris Dawurang on 9/11/22.
//

import SwiftUI

enum BuyerCandidacyType {
    case veryweak, weak, neutral, strong, verystrong
}

func candidacyTypeToString(candidacyType: BuyerCandidacyType) -> String {
    switch candidacyType {
    case .veryweak:
        return "Very Weak"
    case .weak:
        return "Weak"
    case .neutral:
        return "Neutral"
    case .strong:
        return "Strong"
    case .verystrong:
        return "Very Strong"
    }
}

func candidacyColorFromType(candidacyType:BuyerCandidacyType) -> Color {
    switch candidacyType {
    case .veryweak:
        return Color(0xD2001A)
    case .weak:
        return Color(0xFA9494)
    case .neutral:
        return Color(0xB7C4CF)
    case .strong:
        return Color(0x5BB318)
    case .verystrong:
        return Color(0x2B7A0B)
    }
}
