//
//  UIExtensions.swift
//  ShieldTextSize
//
//  Created by 1 on 7/8/20.
//  Copyright © 2020 1. All rights reserved.
//

import UIKit

//class Device {
//  // Base width in point, use iPhone 6
//  static let base: CGFloat = 350
//  static var ratio: CGFloat {
//    return UIScreen.main.bounds.width / base
//  }
//}

extension UILabel {
    func customize(fontSize: CGFloat, fontWeight: FontWeight = .Normal, color: UIColor = BLACK) {
        self.font = appFont(size: fontSize, weight: fontWeight)
        self.numberOfLines = 0
        self.textColor = color
        self.textAlignment = .center
    }
}

// MARK: - UIButton

extension UIButton {
    func customize(textColor: UIColor = .white, borderRadius: CGFloat = 25) {
        //        self.setTitle(title, for: .normal)
        self.setTitleColor(textColor, for: .normal)
        self.layer.cornerRadius = borderRadius
        self.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
    }
}

// MARK: - UIView


extension UIView {
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func applyShadow(shadowRadius: CGFloat = 30, shadowOpacity: Float = 0.25) {
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowOffset = CGSize(width: -2, height: 2)
    }
    
   
        @discardableResult
        func applyGradient(colours: [UIColor]) -> CAGradientLayer {
            return self.applyGradient(colours: colours, locations: nil)
        }

        @discardableResult
        func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
            let gradient: CAGradientLayer = CAGradientLayer()
            gradient.frame = self.bounds
            gradient.colors = colours.map { $0.cgColor }
            gradient.locations = locations
            self.layer.insertSublayer(gradient, at: 0)
            return gradient
        }
}

//extension CGFloat {
//  var adjusted: CGFloat {
//    return self * Device.ratio
//  }
//}
//extension Double {
//  var adjusted: CGFloat {
//    return CGFloat(self) * Device.ratio
//  }
//}
//extension Int {
//  var adjusted: CGFloat {
//    return CGFloat(self) * Device.ratio
//  }
//}
