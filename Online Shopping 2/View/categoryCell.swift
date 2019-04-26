//
//  categoryCell.swift
//  Online Shopping 2
//
//  Created by AnDy on 4/26/19.
//  Copyright © 2019 AnDy. All rights reserved.
//

import UIKit

class categoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryName: UILabel!
    
    func updateViews(category : Category) {
        categoryName.text = category.title
        categoryImage.image = category.image
    }
    
}
