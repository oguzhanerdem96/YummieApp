//
//  DishCategory.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 28.09.2022.
//

import Foundation

struct DishCategory: Decodable {
    let id , name,  image: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
