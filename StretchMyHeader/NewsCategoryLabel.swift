//
//  NewsCategoryLabel.swift
//  StretchMyHeader
//
//  Created by Nelson Chow on 2016-04-12.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit

class NewsCategoryLabel: UILabel {
    
    func setColor(category: Category) {
        switch category {
        case .World:
            textColor = UIColor.redColor()
        case .Americas:
            textColor = UIColor.blueColor()
        case .Europe:
            textColor = UIColor.greenColor()
        case .MiddleEast:
            textColor = UIColor.yellowColor()
        case .Africa:
            textColor = UIColor.orangeColor()
        case .AsiaPacific:
            textColor = UIColor.purpleColor()
        }
    }
}
