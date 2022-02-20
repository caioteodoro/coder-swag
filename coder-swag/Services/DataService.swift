//
//  DataService.swift
//  coder-swag
//
//  Created by Caio Teodoro on 11/09/20.
//  Copyright © 2020 Teodoro Corp. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    /*This creates a singleton. When you use classes or structs, you typically would use it to create multiple copies of it. But when you do as above (a static constant), you will always have only one copy of “instance” in the memory, avoiding multiple versions of the DataService class - which could lead to memory leaks, a broken app or inconstant data.*/
    
    private let categories = [
        // private so no one messes with it
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        //uses the struct Category ccreated in MODEL
    ]
    
    // Down here I create arrays containing the products
    
    private let hats = [
        Product(title: "Devslopes First Hat", price: "$ 18", imageName: "hat01.png"),
        Product(title: "Devslopes Second Hat", price: "$ 20", imageName: "hat02.png"),
        Product(title: "Devslopes Third Hat", price: "$ 22", imageName: "hat03.png"),
        Product(title: "Devslopes Fourth Hat", price: "$ 25", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes First Hoodie", price: "$ 18", imageName: "hoodie01.png"),
        Product(title: "Devslopes Second Hoodie", price: "$ 20", imageName: "hoodie02.png"),
        Product(title: "Devslopes Third Hoodie", price: "$ 22", imageName: "hoodie03.png"),
        Product(title: "Devslopes Fourth Hoodie", price: "$ 25", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes First Shirt", price: "$ 18", imageName: "shirt01.png"),
        Product(title: "Devslopes Second Shirt", price: "$ 20", imageName: "shirt02.png"),
        Product(title: "Devslopes Third Shirt", price: "$ 22", imageName: "shirt03.png"),
        Product(title: "Devslopes Fourth Shirt", price: "$ 25", imageName: "shirt04.png")
    ]
    
    private let digital = [Product]()
    /* When our Collection View is feeding off of this data, it's going to need to get an array of some kind and if we don't have an empty array, we'll have something that's nil and the Apple crash.*/
    
    // Switch, as the name says, help us decide which array to return
    func getCategories (forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigital()
        default:
            return getShirts()
        }
    }
    
    func getHats () -> [Product] {
        return hats
    }
    
    func getShirts () -> [Product] {
        return shirts
    }
    
    func getHoodies () -> [Product] {
        return hoodies
    }
    
    func getDigital () -> [Product] {
        return digital
    }
    
    func getCategories() -> [Category]{
        return categories
        
        //get the array "Category" wherever it is (in the app or server) and return it here.
        
    }
    
    
}
