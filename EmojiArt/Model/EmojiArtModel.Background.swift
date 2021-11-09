//
//  EmojiArtModel.Background.swift
//  EmojiArt
//
//  Created by Enrique Sotomayor on 9/30/21.
//

import Foundation

extension EmojiArtModel {
    enum Background {
        case blank
        case url(URL)
        case imageData(Data)
        
        // safe ways to retrieve model properties
        var url: URL? {
            switch self {
            case .url(let url): return url
            default: return nil
            }
        }
        var imageData: Data? {
            switch self {
            case .imageData(let data): return data
            default: return nil
            }
        }
    }
}
