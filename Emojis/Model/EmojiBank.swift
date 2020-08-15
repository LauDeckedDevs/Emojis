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
        emojiList.append(Emojis(emoji: "🥺", emojiDefinition: "Morritos", emojiTag: "cute"))
        emojiList.append(Emojis(emoji: "😍", emojiDefinition: "In love", emojiTag: "love"))
        emojiList.append(Emojis(emoji: "😘", emojiDefinition: "Beso", emojiTag: "love"))
        emojiList.append(Emojis(emoji: "💻", emojiDefinition: "Quiero mi mac", emojiTag: "tech"))
        emojiList.append(Emojis(emoji: "🥵", emojiDefinition: "Hornito", emojiTag: "sexual"))
        emojiList.append(Emojis(emoji: "🥳", emojiDefinition: "Fiesta", emojiTag: "party"))
        emojiList.append(Emojis(emoji: "😝", emojiDefinition: "Lengua fuera", emojiTag: "cute"))
        emojiList.append(Emojis(emoji: "😳", emojiDefinition: "Vergüenza", emojiTag: "cute"))
    }
}
