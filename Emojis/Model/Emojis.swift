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
    var emojiTag: String
   
    
    //MARK: - Initializer
    
    init(emoji: String, emojiDefinition: String, emojiTag: String) {
        emoji = emoji
        definition = emojiDefinition
        emojiTag = emojiTag
    }
}
