//
//  HonkButton.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-23.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import Foundation
import UIKit

class HonkButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton() {
        
        backgroundColor     = UIColor.InfotivOrange
        layer.cornerRadius = frame.size.height/2
        setTitleColor(UIColor.InfotivWhite, for: .normal)
    }
}
