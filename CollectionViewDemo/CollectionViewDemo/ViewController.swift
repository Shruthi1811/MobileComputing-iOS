
//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Battu,Shruthi on 4/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleOutlet: UILabel!
    @IBOutlet weak var CollectionViewOutlet: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CollectionViewOutlet.delegate = self
    }


}

