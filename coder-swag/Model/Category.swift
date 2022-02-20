//
//  Category.swift
//  coder-swag
//
//  Created by Caio Teodoro on 11/09/20.
//  Copyright © 2020 Teodoro Corp. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
