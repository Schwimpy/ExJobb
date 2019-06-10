//
//  ControlTableViewCell.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-22.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import UIKit

class ControlTableViewCell: UITableViewCell {

    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var IconImage: UIImageView!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
