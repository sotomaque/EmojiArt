//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Enrique Sotomayor on 11/8/21.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    
    let document = EmojiArtDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
