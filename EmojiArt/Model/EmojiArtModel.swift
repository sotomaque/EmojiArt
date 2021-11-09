//
//  EmojiArtModel.swift
//  EmojiArt
//
//  Created by Enrique Sotomayor on 9/30/21.
//

import Foundation

struct EmojiArtModel {
    var background = Background.blank
    var emojis = [Emoji]()
    
    // identifiable to be able to loop over type
    // hashable so we can put them into a set to manage selection
    struct Emoji: Identifiable, Hashable {
        let text: String
        var x: Int // offset from center
        var y: Int // offset from center
        var size: Int
        var id: Int
        
        // fileprivate on a struct makes it to where only members of a this file can create an emoji
        fileprivate init(text: String, x: Int, y: Int, size: Int, id: Int) {
            self.text = text
            self.x = x
            self.y = y
            self.size = size
            self.id = id
        }
    }
    
    init() {}
    
    private var uniqueEmojiId = 0
    
    mutating func addEmoji(_ text: String, at location: (x: Int, y: Int), size: Int ) {
        self.uniqueEmojiId += 1
        self.emojis.append(Emoji(text: text, x: location.x, y: location.y, size: size, id: uniqueEmojiId))
    }
}
