//
//  DiagnosticsTableViewCell.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-22.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import UIKit

class DiagnosticsTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    
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
