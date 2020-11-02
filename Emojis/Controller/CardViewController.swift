//
//  CardViewController.swift
//  Emojis
//
//  Created by Laura Garcia Cano on 14/08/2020.
//  Copyright © 2020 LauDecked Devs. All rights reserved.
//

import UIKit

class CardViewController: UIViewController, Meow {
 
    //MARK: - Properties
    
    @IBOutlet weak var titleLabel: UINavigationItem!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var similarEmojisLabels: UILabel!
    @IBOutlet var tagLabel: UILabel!
    var labelEmoji: String?
    let allEmojis = EmojiBank()
    
    //MARK: - View

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.title = "Emoji: \(labelEmoji ?? "nil")"
        for emoji in allEmojis.emojiList {
            if labelEmoji == emoji.emoji {
                definitionLabel.text = "\(emoji.definition)"
            }
        }
    }
    
    //MARK: - NameLater
    
    func purr(emoji: String) {
         labelEmoji = emoji
     }
}
