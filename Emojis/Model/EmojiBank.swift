//
//  EmojiBank.swift
//  Emojis
//
//  Created by Laura Garcia Cano on 15/08/2020.
//  Copyright © 2020 LauDecked Devs. All rights reserved.
//

import Foundation

class EmojiBank {
    
    //MARK: - List
    
    var emojiList = [Emojis]()
    
    //MARK: - Elements
    
    init() {
        emojiList.append(Emojis(emoji: "🥺", emojiDefinition: "Morritos", similarEmoji1: "😍", similarEmoji2: "😳", similarEmoji3: "😮"))
        emojiList.append(Emojis(emoji: "😍", emojiDefinition: "In love", similarEmoji1: "😘", similarEmoji2: "🥰", similarEmoji3: "❤️"))
    }
}
