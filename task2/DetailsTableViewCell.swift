//
//  DetailsTableViewCell.swift
//  task2
//
//  Created by brst on 1/9/18.
//  Copyright © 2018 brst. All rights reserved.
//

import UIKit
import Kingfisher

class DetailsTableViewCell: UITableViewCell {

    
    
    @IBOutlet var userDescription: UILabel!
    @IBOutlet var aboutUser: UILabel!
    @IBOutlet var userName: UILabel!
    @IBOutlet var userIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
