//
//  DetailsVC.swift
//  Online Shopping 2
//
//  Created by AnDy on 4/26/19.
//  Copyright © 2019 AnDy. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var describtion: UILabel!
    
    
    var productDetails : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        name.text = productDetails?.title
        price.text = productDetails?.price
        image.image = productDetails?.image
        
    }
    
    
    
    
}
