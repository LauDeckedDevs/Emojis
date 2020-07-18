//
//  CustomButton.swift
//  Emojis
//
//  Created by Laura Garcia Cano on 10/06/2020.
//  Copyright © 2020 LauDecked Devs. All rights reserved.
//

import UIKit

@IBDesignable
    
    class CustomButton: UIButton {

        @IBInspectable var cornerRadius: CGFloat = 0{
            didSet{
            self.layer.cornerRadius = cornerRadius
            }
        }

        @IBInspectable var borderWidth: CGFloat = 0{
            didSet{
                self.layer.borderWidth = borderWidth
            }
        }

        @IBInspectable var borderColor: UIColor = UIColor.clear{
            didSet{
                self.layer.borderColor = borderColor.cgColor
        }
    }
       func shadowOnviewWithcornerRadius(YourView:UIView)
    {
            YourView.layer.shadowColor = UIColor.black.cgColor;
            YourView.layer.shadowOpacity = 0.5;
            YourView.layer.shadowRadius  = 5;
            YourView.layer.shadowOffset  = CGSize(width :0, height :0)
            YourView.layer.masksToBounds = false;
            YourView.layer.cornerRadius  =  2.0;
            YourView.layer.borderWidth   = 0.5;
            YourView.backgroundColor     = UIColor.white;
    }
}
