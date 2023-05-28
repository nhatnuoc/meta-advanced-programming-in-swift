//
//  MenuItem.swift
//  meta-advanced-programming-in-swift
//
//  Created by Nguyễn Thanh Bình on 28/05/2023.
//

import Foundation

struct MenuItem: Identifiable {
    var id: ObjectIdentifier
    
    let title: String
    let ingredients: [Ingredient]
}
