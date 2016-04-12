//
//  NewsTableViewCell.swift
//  StretchMyHeader
//
//  Created by Nelson Chow on 2016-04-12.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    // MARK: Properties
    @IBOutlet weak var categoryLabel: NewsCategoryLabel!
    @IBOutlet weak var headlineLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
