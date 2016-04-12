//
//  NewsItem.swift
//  StretchMyHeader
//
//  Created by Nelson Chow on 2016-04-12.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import UIKit

enum Category: String {
    case World = "World"
    case Americas = "Americas"
    case Europe = "Europe"
    case MiddleEast = "Middle East"
    case Africa = "Africa"
    case AsiaPacific = "Asia Pacific"
}

enum Headline: String {
    case World = "Climate change protests, divestments meet fossil fuels realities"
    case Americas = "Officials: FBI is tracking 100 Americans who fought alongside IS in Syria"
    case Europe = "'One million babies' created by EU student exchanges"
    case MiddleEast = "Airstrikes boost Islamic State, FBI director warns more hostages possible"
    case Africa = "Nigeria says 70 dead in building collapse; questions S. Africa victim claim"
    case AsiaPacific = "Despite UN ruling, Japan seeks backing for whale hunting"
}

struct NewsItem {
    var category: Category
    var headline: Headline
    
    func categoryString() -> String{
        return category.rawValue
    }
    
    func headlineString() -> String {
        return headline.rawValue
    }
}
