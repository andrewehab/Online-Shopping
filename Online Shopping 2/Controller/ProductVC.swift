//
//  ProductVC.swift
//  Online Shopping 2
//
//  Created by AnDy on 4/26/19.
//  Copyright © 2019 AnDy. All rights reserved.
//

import UIKit

class ProductVC: UIViewController {
    
    var products = [Product]()
    var categoryName : String?
    
    @IBOutlet weak var productCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
extension ProductVC : UICollectionViewDataSource , UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! productCell
        let categories = products[indexPath.row]
        cell.updateViews(product: categories)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailsVC = storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
        detailsVC.productDetails = DataService.instance.getProduct(title: categoryName!)[indexPath.row]
        navigationController?.pushViewController(detailsVC, animated: true)
        
    }
    
    
}
