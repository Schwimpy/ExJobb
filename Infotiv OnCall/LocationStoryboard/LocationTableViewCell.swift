//
//  LocationTableViewCell.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-22.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import UIKit

class LocationTableViewCell: UITableViewCell {

    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var underline: UIView!
    @IBOutlet weak var behindTitle: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
