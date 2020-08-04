//
//  Helper.swift
//  ShieldTextSize
//
//  Created by 1 on 7/8/20.
//  Copyright © 2020 1. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Dimensions
let SCREEN_WIDTH         = UIScreen.main.bounds.width
let SCREEN_HEIGHT        = UIScreen.main.bounds.height

// MARK: - Fonts
enum FontWeight {
    case Normal
    case Medium
    case Bold
}
//??
func appFont(size: CGFloat, weight: FontWeight = .Normal) -> UIFont {
    switch weight {
    case .Normal:
        return UIFont(name: "HelveticaNeue", size: size)!
    case .Medium:
        return UIFont(name: "HelveticaNeue-\(weight)", size: size)!
    case .Bold:
        return UIFont(name: "HelveticaNeue-\(weight)", size: size)!
    }
}

// MARK: - Colors

let BLACK = UIColor(red: 0.363, green: 0.363, blue: 0.363, alpha: 1)
let GREEN = UIColor(red: 0.233, green: 0.692, blue: 0.208, alpha: 1)
let LIGHT_GREY = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
