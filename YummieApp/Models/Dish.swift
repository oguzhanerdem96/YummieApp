//
//  Dish.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 29.09.2022.
//

import Foundation

struct Dish {
    let id, name, description, image: String?
    let calories: Int?
    
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
    
}
