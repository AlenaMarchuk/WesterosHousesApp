//
//  MyTableViewCell.swift
//  ListViewApp_AlenaMarchuk
//
//  Created by alena on 5/13/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var bgrdCell: UIImageView!
    @IBOutlet weak var cellText: UITextView!
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
