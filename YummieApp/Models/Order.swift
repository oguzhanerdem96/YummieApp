//
//  Order.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 30.09.2022.
//

import Foundation

struct Order: Decodable {
    let id: String?
    let name: String?
    let dish: Dish?
}
