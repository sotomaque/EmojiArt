//
//  Character.swift
//  EmojiArt
//
//  Created by Enrique Sotomayor on 11/8/21.
//

import SwiftUI

extension Character {
    var isEmoji: Bool {
        if let firstScalar = unicodeScalars.first, firstScalar.properties.isEmoji {
            return (firstScalar.value >= 0x238d || unicodeScalars.count > 1)
        } else {
            return false
        }
    }
}
