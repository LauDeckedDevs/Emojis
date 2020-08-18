//
//  ViewController.swift
//  Emojis
//
//  Created by Laura Garcia Cano on 10/06/2020.
//  Copyright © 2020 LauDecked Devs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    
    let allEmojis = EmojiBank()
    @IBOutlet var buttons: [CustomButton]!
    private var usedEmojis: [String] = []
    
    
    //MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usedEmojis.removeAll(keepingCapacity: false)
        for button in buttons {
            var buttonText = allEmojis.emojiList.randomElement()?.emoji
            while usedEmojis.contains(buttonText!) {
                buttonText = allEmojis.emojiList.randomElement()?.emoji            }
            
            if (!usedEmojis.contains(buttonText!)) {
                usedEmojis.append(buttonText!)
                button.setTitle(buttonText, for: UIControl.State.normal)
            }
        }
    }
    
    var emojiKey: String?
    var emojiValue: String?
    
    //MARK: - DefinitionMessage
    
    @IBAction func showMessage(sender: UIButton) {
    let wordToLookup = sender.titleLabel?.text
        for emoji in allEmojis.emojiList {
            if (emoji.emoji == wordToLookup) {
                let alertController = UIAlertController(title: "Significado", message: emoji.definition, preferredStyle: UIAlertController.Style.alert
                )
                alertController.addAction(UIAlertAction(title: "Oki", style: UIAlertAction.Style.default,
                handler: nil)
                )
               present(alertController, animated: true, completion: nil)
            }
        }
    }
    
    //MARK: - AddEmojisFunction
    
    @IBAction func saveEmoji(emojiTextfield: UITextField) {
        emojiKey = emojiTextfield.text
    }
    
    @IBAction func saveEmojiMeaning(emojiMeaningTextfield: UITextField) {
        emojiValue = emojiMeaningTextfield.text
    }
    
    /*@IBAction func updateEmojiLibrary(cuac: UIButton) {
        var title = ""
        var message = ""
        if (emojiValue != nil && emojiKey != nil) {
            allEmojis.emojiList.append(Emojis(emojiDefinition ?? "", forKey: emojiKey ?? "")
            emojiValue = nil ; emojiKey = nil
            title = "Ala"
            message = "ha funchionado owo"
        } else {
            title = "Ala..."
            message = "ha fallado u.u"
        }
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: UIAlertController.Style.alert
         )
         alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,
         handler: nil)
         )
        present(alertController, animated: true, completion: nil)
    }
    
   func meow(maullido: String) {
        print(maullido)
    } */
    @IBAction func mockSuggestEmojis(sender: UIButton) {
        let alert = UIAlertController(
            title: "Ala",
            message: "Has sugerido un nuevo emoji :O", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Oki", style: .default))
        self.present(alert, animated: true, completion: nil)
    }
}
