//
//  ViewController.swift
//  Emojis
//
//  Created by Laura Garcia Cano on 10/06/2020.
//  Copyright © 2020 LauDecked Devs. All rights reserved.
//

import UIKit

protocol Meow {
    func purr(emoji: String)
}

class ViewController: UIViewController {

    //MARK: - Properties
        
    @IBOutlet var buttons: [CustomButton]!
    let allEmojis = EmojiBank()
    private var usedEmojis: [String] = []
    var emojiField: String?
    var meaningField: String?
    var labelEmoji: String = ""
    var delegate: Meow?
    
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
    
    //MARK: - FakeEmojiSuggestion
    
    @IBAction func saveEmoji(emojiTextfield: UITextField) {
        emojiField = emojiTextfield.text
    }
    
    @IBAction func saveEmojiMeaning(emojiMeaningTextfield: UITextField) {
        meaningField = emojiMeaningTextfield.text
    }
    
    @IBAction func mockSuggestEmojis(sender: UIButton) {
        if (emojiField != nil) && (meaningField != nil){
            let alert = UIAlertController(
                title: "Ala",
                message: "Has sugerido un nuevo emoji :O",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Oki", style: .default))
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(
                title: "Ala...",
                message: "Algo falló u.u",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Oki", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
//MARK: - Swipes

    @IBAction func leftSwipe() {
        swipeGestures(sender: UISwipeGestureRecognizer(), segueID: "secondView")
    }

    @IBAction func rightSwipe() {
        swipeGestures(sender: UISwipeGestureRecognizer(), segueID: "firstView")
    }
    
        //MARK: - SwipeGestures

    func swipeGestures(sender: Any, segueID: String) {
        self.performSegue(withIdentifier: segueID, sender: nil)
        }

    //MARK: - CardViewSegue
    
    @IBAction func cardViewSegue(sender: UIButton) {
        delegate?.purr(emoji: sender.titleLabel?.text ?? "nil")
        self.performSegue(withIdentifier: "cardViewSegue", sender: nil)
    }
}
