//
//  NewTimerButton.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-21.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import Foundation
import UIKit

class NewTimerButton: UIButton {
    
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
        titleLabel?.font    = UIFont(name:"ArialMT" , size: 33)
        layer.cornerRadius = frame.size.height/2
        setTitleColor(UIColor.InfotivWhite, for: .normal)
    }
}
