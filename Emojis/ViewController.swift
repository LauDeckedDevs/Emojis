//
//  ViewController.swift
//  Emojis
//
//  Created by Laura Garcia Cano on 10/06/2020.
//  Copyright © 2020 LauDecked Devs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    typealias Emojis = [String: String]
    var emojiDefs: Emojis = ["🥺": "Morritos", "😍": "In love", "😘": "Besito", "💻": "Quiero mi mac",
                             "🥵": "Horny", "🥳": "fiesta", "😝": "Lengua fuera", "😳": "vergüenza"]
    var emojiKey: String?
    var emojiValue: String?
    
    @IBAction func showMessage(sender: UIButton) {
    let wordToLookup = sender.titleLabel?.text
        for emoji in emojiDefs {
            if (emoji.key == wordToLookup) {
                let alertController = UIAlertController(title: "Meaning", message: emoji.value,preferredStyle: UIAlertController.Style.alert
                )
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,
                handler: nil)
                )
               present(alertController, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func saveEmoji(emojiTextfield: UITextField) {
        emojiKey = emojiTextfield.text
    }
    
    @IBAction func saveEmojiMeaning(emojiMeaningTextfield: UITextField) {
        emojiValue = emojiMeaningTextfield.text
    }
    
    @IBAction func updateEmojiLibrary(cuac: UIButton) {
        var title = ""
        var message = ""
        if (emojiValue != nil && emojiKey != nil) {
            emojiDefs.updateValue(emojiValue ?? "", forKey: emojiKey ?? "")
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
    
   /* func meow(maullido: String) {
        print(maullido)
    } */
}
