//
//  ViewController.swift
//  SalesTax
//
//  Created by Chanakya Devraj on 10/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalPriceLbl: UILabel!
    
    @IBOutlet weak var priceTxt: UITextField!
    
    @IBOutlet weak var salesTaxTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = ""
    }
    
    @IBAction func calculateTotalPrice(_ sender: Any) {
        
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        
        totalPriceLbl.text = "\(totalPrice)"
    }
    
}

