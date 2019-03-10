//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Test on 3/10/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor  = UIColor.white.cgColor
    }

}
