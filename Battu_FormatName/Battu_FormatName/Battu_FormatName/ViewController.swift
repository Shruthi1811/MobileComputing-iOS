//
//  ViewController.swift
//  Battu_FormatName
//
//  Created by Battu,Shruthi on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstNameTextField: UITextField!
    
    @IBOutlet var lastNameTextField: UITextField!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        //read the text
               var lNameText =  lastNameTextField.text!
               var fNameText = firstNameTextField.text!
               var p = fNameText.first!
               var q = lNameText.first!
               fullNameLabel.text = "Full Name : \(lNameText),\(fNameText)"
               initialsLabel.text = "initials : \(String(p)+String(q))"
               }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text = ""
               lastNameTextField.text = ""
               fullNameLabel.text = ""
               initialsLabel.text = ""
    }
    

}

