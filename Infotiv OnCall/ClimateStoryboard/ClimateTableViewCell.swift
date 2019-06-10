//
//  ClimateTablwViewCell.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-21.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import Foundation
import UIKit

class ClimateTableViewCell: UITableViewCell {
    @IBOutlet weak var underLine: UIView!
    @IBOutlet weak var TimeLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
