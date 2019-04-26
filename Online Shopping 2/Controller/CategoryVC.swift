//
//  ViewController.swift
//  Online Shopping 2
//
//  Created by AnDy on 4/26/19.
//  Copyright © 2019 AnDy. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController {

    let shared = DataService.instance.getCategory()

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension CategoryVC : UITableViewDataSource , UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shared.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! categoryCell
        let categories = shared[indexPath.row]
        cell.updateViews(category: categories)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let productVC = storyboard?.instantiateViewController(withIdentifier: "ProductVC") as! ProductVC
        let categoryTitle = shared[indexPath.row].title
        productVC.categoryName = categoryTitle
        productVC.products = DataService.instance.getProduct(title: categoryTitle)
        navigationController?.pushViewController(productVC, animated: true)
    }
    
}


