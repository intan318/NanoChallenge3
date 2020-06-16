//
//  addJourneyVC.swift
//  NanoChallenge3
//
//  Created by Marsel Estefan Lie on 13/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class addJourneyVC: UIViewController{
    
    let myPoints = Point(userPoints: 450)
    var pointNumber: Int = 700
    var place:String = ""
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var placeTitle: UILabel!
    @IBOutlet weak var pointNeeded: UILabel!
    @IBOutlet weak var exchange: UIButton!
    @IBOutlet weak var enoughOrNot: UILabel!
    @IBOutlet weak var joinClub: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        icon.layer.cornerRadius = icon.frame.height/2
        
        exchange.backgroundColor = .lightGray
        exchange.titleLabel?.text = "Nusa Penida"
        exchange.layer.cornerRadius = 10
        
        joinClub.backgroundColor = .green
        joinClub.layer.cornerRadius = 10
        
        placeTitle?.text = place
        
        if placeTitle.text == "Nusa Penida"{
            pointNeeded.text = "\(pointNumber) Points"
        }
        
        if myPoints.userPoints < pointNumber{
            enoughOrNot.text = "You donʼt have enough points.\nYour points is \(myPoints.userPoints)"
        }
        else{
            enoughOrNot.text = ""
            exchange.backgroundColor = .green
        }
        
        

    }
    
    @IBAction func exchangeBtn(_ sender: Any) {
        if myPoints.userPoints < pointNumber{
            let alert = UIAlertController(title: "Sorry", message: "Your points is not enough.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
        else{
            //add to collection
        }
    }
    
    
    @IBAction func cancelBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

