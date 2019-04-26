//
//  productCell.swift
//  Online Shopping 2
//
//  Created by AnDy on 4/26/19.
//  Copyright © 2019 AnDy. All rights reserved.
//

import UIKit

class productCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product : Product){
        productName.text = product.title
        productPrice.text = product.price
        productImage.image = product.image
    }
}
