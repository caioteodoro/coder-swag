//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Caio Teodoro on 31/08/20.
//  Copyright © 2020 Teodoro Corp. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }
    

}
