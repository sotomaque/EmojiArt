//
//  Collection.swift
//  EmojiArt
//
//  Created by Enrique Sotomayor on 11/8/21.
//
import SwiftUI

// add extension to a collection that adds this method to all protocol memebers
// i.e. arrays, sets, strings, etc.
extension Collection where Element: Identifiable {
    func index(matching element: Element) -> Self.Index? {
        firstIndex(where: {$0.id == element.id })
    }
}

