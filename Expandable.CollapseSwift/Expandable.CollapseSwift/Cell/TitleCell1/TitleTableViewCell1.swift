//
//  TitleTableViewCell1.swift
//  Expandable.CollapseSwift
//
//  Created by Boss on 10/7/20.
//  Copyright © 2020 Boss. All rights reserved.
//

import UIKit

class TitleTableViewCell1: UITableViewCell {
    
    var isShow: Bool = true
    
    @IBOutlet weak var iconImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fillData() {
           iconImageView.image = isShow ? UIImage(named: "tam_giac_nguoc") : UIImage(named: "tam_giac_ngang")
       }
    
}
