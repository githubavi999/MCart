
//
//  RoundeButton.swift
//  MCart
//
//  Created by avi marathe on 22/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

    @IBDesignable
class RoundeButton: UIButton {

        @IBInspectable var cornerRadius : CGFloat = 3.0{
            didSet{
                self.layer.cornerRadius = cornerRadius
            }
        }
        
        
        override func awakeFromNib() {
            super.prepareForInterfaceBuilder()
            self.layer.cornerRadius = cornerRadius
        }
        
        
        
        
        
}
