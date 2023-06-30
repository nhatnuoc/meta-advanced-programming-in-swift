//
//  MenuViewViewModel.swift
//  meta-advanced-programming-in-swift
//
//  Created by Nguyễn Thanh Bình on 28/05/2023.
//

import Foundation

class MenuItemsViewModel {
    let foodMenuItems: [MenuItem] = {
        return (0..<12).map { i in
            return MenuItem(title: "Food \(i)", ingredients: [.tomatoSauce, .broccoli, .pasta, .carrot])
        }
    }()
    let drinkMenuItems: [MenuItem] = {
        return (0..<8).map { i in
            return MenuItem(title: "Drink \(i)", ingredients: [.tomatoSauce, .broccoli, .pasta, .carrot])
        }
    }()
    let dessertMenuItems: [MenuItem] = {
        return (0..<4).map { i in
            return MenuItem(title: "Dessert \(i)", ingredients: [.tomatoSauce, .broccoli, .pasta, .carrot])
        }
    }()
}
