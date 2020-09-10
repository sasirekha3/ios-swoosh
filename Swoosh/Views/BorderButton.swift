//
//  BorderButton.swift
//  Swoosh
//
//  Created by Sasirekha Kambhampaty on 9/10/20.
//  Copyright © 2020 Sasirekha Kambhampaty. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        // always call super.awakeFromNib()
        super.awakeFromNib()
        
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
