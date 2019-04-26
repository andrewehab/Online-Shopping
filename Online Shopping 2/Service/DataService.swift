//
//  DataService.swift
//  Online Shopping 2
//
//  Created by AnDy on 4/26/19.
//  Copyright © 2019 AnDy. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "Hats", image: #imageLiteral(resourceName: "hats")),
        Category(title: "T-Shirts", image: #imageLiteral(resourceName: "shirts")),
        Category(title: "Hoodies", image: #imageLiteral(resourceName: "hoodies")),
    ]
    
    func getCategory() -> [Category] {
        return categories
    }
    
    private let hats = [
        Product(title: "White Hat", price: "$28", image: #imageLiteral(resourceName: "hat03")),
        Product(title: "Black Hat", price: "$24", image: #imageLiteral(resourceName: "hat01")),
        Product(title: "Gray Hat", price: "$29", image: #imageLiteral(resourceName: "hat04")),
        Product(title: "Blue Hat", price: "$22", image: #imageLiteral(resourceName: "hat02"))
    ]
    
    private let shirts = [
        Product(title: "White T-Shirt", price: "$50", image: #imageLiteral(resourceName: "shirt02")),
        Product(title: "Black T-Shirt", price: "$98", image: #imageLiteral(resourceName: "shirt01")),
        Product(title: "Gray T-Shirt", price: "$46", image: #imageLiteral(resourceName: "shirt04")),
        Product(title: "Red T-Shirt", price: "$40", image: #imageLiteral(resourceName: "shirt03"))
    ]
    
    private let hoodies = [
        Product(title: "White Hoodies", price: "$45", image: #imageLiteral(resourceName: "hoodie03")),
        Product(title: "Black Hoodies", price: "$78", image: #imageLiteral(resourceName: "hoodie04")),
        Product(title: "Gray Hoodies", price: "$65", image: #imageLiteral(resourceName: "hoodie03")),
        Product(title: "Red Hoodies", price: "$98", image: #imageLiteral(resourceName: "hoodie02"))
    ]
    
    
    private func getHats() -> [Product] {
        return hats
    }
    private func getShirts() -> [Product] {
        return shirts
    }
    private func getHoodies() -> [Product] {
        return hoodies
    }
    
    
    func getProduct (title : String) -> [Product] {
        
        switch title {
        case "Hats":
            return getHats()
        case "T-Shirts":
            return getShirts()
        case "Hoodies":
            return getHoodies()
        default:
            return [Product]()
        }
    }
    
    
}
