//
//  MenuItem.swift
//  meta-advanced-programming-in-swift
//
//  Created by Nguyễn Thanh Bình on 28/05/2023.
//

import Foundation

protocol MenuItemDetail {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var category: MenuCategory { get }
    var ordersCount: Int { get set }
    var priceInt: Int { get set }
    var ingredients: [Ingredient] { get set }
}

//class MenuItemDetailImpl: MenuItemDetail {
//    var id: UUID
//    
//    var price: Double
//    
//    var title: String
//    
//    var category: MenuCategory
//    
//    var ordersCount: Int
//    
//    var priceInt: Int
//    
//    var ingredients: [Ingredient]
//    
//    
//}

struct MenuItem: Identifiable, MenuItemDetail {
    var price: Double
    
    var category: MenuCategory
    
    var ordersCount: Int
    
    var priceInt: Int
    
    var ingredients: [Ingredient]
    
    var id = UUID()
    
    let title: String
    
}
