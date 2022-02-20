//
//  Product.swift
//  coder-swag
//
//  Created by Caio Teodoro on 18/09/20.
//  Copyright © 2020 Teodoro Corp. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var title: String!
    private(set) public var price: String!
    private(set) public var imageName: String!
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
