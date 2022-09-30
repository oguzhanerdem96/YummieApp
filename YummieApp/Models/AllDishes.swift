//
//  AllDishes.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 30.09.2022.
//

import Foundation
struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
