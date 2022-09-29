//
//  UIViewController + Extension.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 29.09.2022.
//

import UIKit

extension UIViewController {
    static var idenfier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return  storyboard.instantiateViewController(withIdentifier: idenfier) as! Self
       
    }
}


