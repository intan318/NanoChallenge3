//
//  ExploreVC.swift
//  NanoChallenge3
//
//  Created by Marsel Estefan Lie on 13/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class ExploreVC: UIViewController {
    
    let myPoints = Point(userPoints: 450)
    
    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var myPoint: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPoint.text = "\(myPoints.userPoints) points"
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ViewController{
            let vc = segue.destination as? ViewController
            vc?.place = placeName.text!
            
        }
        
    }
}


