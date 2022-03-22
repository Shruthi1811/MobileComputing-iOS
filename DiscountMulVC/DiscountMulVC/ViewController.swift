//
//  ViewController.swift
//  DiscountMulVC
//
//  Created by Battu,Shruthi on 3/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountOutlet: UITextField!
    
    @IBOutlet weak var discountRateOutlet: UITextField!
    var  priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

     
       
    @IBAction func calcDiscountButtonClicked(_ sender: Any) {
        var amount = Double (amountOutlet.text!)
        var disrate = Double(discountRateOutlet.text!)
        priceAfterDiscount = amount! - (amount!*disrate!/100)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"
        {
            var destination = segue.destination as! ResultViewController
            destination.amount = amountOutlet.text!
            destination.disrate = discountRateOutlet.text!
            destination.priceAfterDiscount = String(priceAfterDiscount)
            
            
        }    }
    
}

