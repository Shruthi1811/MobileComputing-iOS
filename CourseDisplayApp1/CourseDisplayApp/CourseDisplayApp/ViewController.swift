//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Battu,Shruthi on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    @IBOutlet weak var semOffered: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var PreviousButton: UIButton!
    
    let courses = [
        ["img01", "44555","Network security","Fall2022"],
                   ["img02", "44643","ios", "Spring2022"],
        ["img03","44656","Data straming","Fall 2022"]]
    var imageNumber=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // the details of the course in 0th position is displayed.
        updateUI(imageNumber)
        //The previous button should be disabled
    }
   
    @IBAction func PreviousButtonClicked(_ sender: UIButton) {
        //next button should be enabled
        nextButton.isEnabled = true
        //update the course details by decrementing image number
 
        imageNumber -= 1
        updateUI(imageNumber)
        //once you reach the beginning of the array, previous button should be disabled.
        if(imageNumber == 0){
            PreviousButton.isEnabled = false
        }
        
    }
        
    

    @IBAction func nextButton(_ sender: UIButton) {
        //update the UI of next course by incrementing image number
        imageNumber += 1
        updateUI(imageNumber)
        //previous button should be enabled
        //Once the user reach end of array the next button should be disabled.
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
        
    }
    func updateUI(_ imageNum:Int){
        displayImage.image = UIImage(named:courses[imageNum][0])
        crsNum.text = courses[imageNum][1]
        crsTitle.text = courses[imageNum][2]
        semOffered.text = courses[imageNum][3]
        
    }

}
