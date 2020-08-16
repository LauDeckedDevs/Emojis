//
//  CardViewController.swift
//  Emojis
//
//  Created by Laura Garcia Cano on 14/08/2020.
//  Copyright © 2020 LauDecked Devs. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    //MARK: - Properties
    
    
    @IBOutlet weak var titleLabel: UINavigationItem!
    @IBOutlet weak var definition: UILabel!
    @IBOutlet weak var similarEmojis: UILabel!
    
    //MARK: - View

    override func viewDidLoad() {
        super.viewDidLoad()
        /*for button in {
            //titleLabel.title = "Emoji: \(button.titleLabel!.text ?? "nil")"
        } */
    }
}
