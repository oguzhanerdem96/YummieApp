//
//  String + Extension.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 28.09.2022.
//

import Foundation

extension String {
    var asUrl: URL?{
    return URL(string: self)
    }
}
