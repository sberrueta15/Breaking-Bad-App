//
//  TableViewCell.swift
//  AppTableView
//
//  Created by SP26 on 8/4/16.
//  Copyright © 2016 SP26. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
   
    @IBOutlet var profileImage: UIView!
    @IBOutlet var profileName: UILabel!
    @IBOutlet var profileDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
