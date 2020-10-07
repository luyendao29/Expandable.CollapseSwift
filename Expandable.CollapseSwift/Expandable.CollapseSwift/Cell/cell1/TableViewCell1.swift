//
//  TableViewCell1.swift
//  Expandable.CollapseSwift
//
//  Created by Boss on 10/7/20.
//  Copyright © 2020 Boss. All rights reserved.
//

import UIKit

class TableViewCell1: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
