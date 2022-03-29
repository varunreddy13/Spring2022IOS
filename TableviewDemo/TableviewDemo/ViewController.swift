//
//  ViewController.swift
//  TableviewDemo
//
//  Created by Musku,Varun Reddy on 3/29/22.
//

import UIKit

class Product{
    var productName : String?
    var productCategory : String?
    
    init(productName: String, productCategory: String){
        self.productName = productName
        self.productCategory = productCategory
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableviewOutlet.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
               
               //Assign the data to the cell.
               cell.textLabel?.text = productsArray[indexPath.row].productName
               
               //return cell
               return cell
    }
    
    var productsArray = [Product]()
    @IBOutlet weak var tableviewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableviewOutlet.delegate = self
        tableviewOutlet.dataSource = self
        
        let product1 =  Product(productName: "MAC", productCategory: "Laptop")
        productsArray.append(product1)
        
        let product2 = Product(productName: "dell", productCategory:"laptop")
        productsArray.append(product2)

        let product3 = Product(productName: "mac", productCategory:"laptop")
        productsArray.append(product3)

        let product4 = Product(productName: "samsunsg", productCategory:"laptop")
        productsArray.append(product4)

        let product5 = Product(productName: "mac", productCategory:"laptop")
        productsArray.append(product5)

    }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "DetailsSegue"{
            let destination = segue.destination as! DetailsViewController
            destination.product = productsArray[(tableviewOutlet.indexPathForSelectedRow?.row)!]
        }
    }

}

