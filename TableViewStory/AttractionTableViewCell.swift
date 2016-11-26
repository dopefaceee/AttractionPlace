//
//  AttractionTableViewCell.swift
//  TableViewStory
//
//  Created by Ade Suluh on 10/2/16.
//  Copyright © 2016 Ade Suluh. All rights reserved.
//

import UIKit

class AttractionTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var attractionImage: UIImageView!
    
    @IBOutlet weak var attractionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
