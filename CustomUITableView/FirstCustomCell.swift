//
//  FirstCustomCell.swift
//  CustomUITableView
//
//  Created by JuneK on 20/08/2019.
//  Copyright © 2019 JuneK. All rights reserved.
//

import UIKit

class FirstCustomCell: UITableViewCell {

    @IBOutlet weak var tvImageView: UIImageView!
    @IBOutlet weak var tvLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
