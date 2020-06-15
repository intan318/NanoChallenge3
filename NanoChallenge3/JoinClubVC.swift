//
//  JoinClubVC.swift
//  NanoChallenge3
//
//  Created by Marsel Estefan Lie on 14/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class JoinClubVC: UIViewController {
    
    @IBOutlet weak var join1: UIButton!
    @IBOutlet weak var join2: UIButton!
    @IBOutlet weak var join3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        join1.layer.borderWidth = 1
        join1.layer.cornerRadius = 10
        join2.layer.borderWidth = 1
        join2.layer.cornerRadius = 10
        join3.layer.borderWidth = 1
        join3.layer.cornerRadius = 10

    }
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func join1Btn(_ sender: Any) {
        let alert = UIAlertController(title: "Sorry", message: "This feature is not yet available.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    @IBAction func join2Btn(_ sender: Any) {
        let alert = UIAlertController(title: "Sorry", message: "This feature is not yet available.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    @IBAction func join3Btn(_ sender: Any) {
        let alert = UIAlertController(title: "Sorry", message: "This feature is not yet available.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
