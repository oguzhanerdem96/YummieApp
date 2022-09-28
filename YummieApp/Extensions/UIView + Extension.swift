//
//  UIView + Extension.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 28.09.2022.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
