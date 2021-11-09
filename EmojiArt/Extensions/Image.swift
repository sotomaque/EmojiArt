//
//  Image.swift
//  EmojiArt
//
//  Created by Enrique Sotomayor on 11/8/21.
//

import SwiftUI

struct OptionalImage: View {
    var uiImage: UIImage?
    
    var body: some View {
        if uiImage != nil {
            Image(uiImage: uiImage!)
        }
    }
}
