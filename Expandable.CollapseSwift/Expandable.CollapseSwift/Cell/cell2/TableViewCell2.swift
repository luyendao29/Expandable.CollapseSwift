//
//  TableViewCell2.swift
//  Expandable.CollapseSwift
//
//  Created by Boss on 10/7/20.
//  Copyright © 2020 Boss. All rights reserved.
//

import UIKit

class TableViewCell2: UITableViewCell {
    @IBOutlet weak var nameTextView: UITextView!
    @IBOutlet weak var ageTextView: UITextView!
    @IBOutlet weak var addressTextView: UITextView!
    
    
    var infoStudent: Student?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fillData() {
        nameTextView.text = infoStudent?.name
        ageTextView.text = infoStudent?.age
        addressTextView.text = infoStudent?.address
    }
    
}
