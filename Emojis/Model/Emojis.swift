//
//  Emojis.swift
//  Emojis
//
//  Created by Laura Garcia Cano on 15/08/2020.
//  Copyright © 2020 LauDecked Devs. All rights reserved.
//

import Foundation

class Emojis {
    
    //MARK: - Properties
    
    var emoji: String
    var definition: String
    var similarEmoji1: String
    var similarEmoji2: String
    var similarEmoji3: String
    
    //MARK: - Initializer
    
    init(emoji: String, emojiDefinition: String, similarEmoji1: String, similarEmoji2: String, similarEmoji3: String) {
        emoji = emoji
        definition = emojiDefinition
        similarEmoji1 = similarEmoji1
        similarEmoji2 = similarEmoji2
        similarEmoji3 = similarEmoji3
    }
}
