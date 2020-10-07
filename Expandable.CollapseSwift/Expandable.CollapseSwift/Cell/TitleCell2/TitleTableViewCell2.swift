//
//  TitleTableViewCell2.swift
//  Expandable.CollapseSwift
//
//  Created by Boss on 10/7/20.
//  Copyright © 2020 Boss. All rights reserved.
//

import UIKit

class TitleTableViewCell2: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    
    var isShow: Bool = true
    
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
