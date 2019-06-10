//
//  CustomTableViewCell.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-17.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import Foundation
import UIKit

class MainTableViewCell: UITableViewCell {
    

    @IBOutlet weak var CellImageView: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var DescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
