//
//  MovieCollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by Battu,Shruthi on 4/12/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    func assignMovie(with movie:Movie){
        ImageViewOutlet.image = movie.image
    }
    
}
