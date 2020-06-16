//
//  ViewController.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 09/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var place: String = "Nusa Penida"

    @IBOutlet weak var detailPlace: UILabel!
    @IBOutlet weak var placeTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailPlace.sizeToFit()
        detailPlace.numberOfLines = 0
        
        placeTitle?.text = place
        
        if placeTitle.text == "Nusa Penida"{
            detailPlace.text = "Nusa Penida is a small island located in the southeast of the island of Bali, separated by the Badung Strait. Nusa Gede Island's natural conditions consist of gentle slopes and hilly terrain surrounded by oceans. The main attraction of Nusa Penida lies in three things, there are white sand beach, high cliff, and underwater scenery."
        }
        
        setUpMenuButton()
        
    }
    
    func setUpMenuButton(){
            let addBtn = UIButton(type: .custom)
            addBtn.frame = CGRect(x: 0.0, y: 0.0, width: 30, height: 30)
            addBtn.setImage(UIImage(systemName: "plus"), for: .normal)
            addBtn.addTarget(self, action: #selector(addTapped), for: UIControl.Event.touchUpInside)

            let addBarItem = UIBarButtonItem(customView: addBtn)
            let currWidth = addBarItem.customView?.widthAnchor.constraint(equalToConstant: 24)
            currWidth?.isActive = true
            let currHeight = addBarItem.customView?.heightAnchor.constraint(equalToConstant: 24)
            currHeight?.isActive = true
            self.navigationItem.rightBarButtonItem = addBarItem
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is addJourneyVC{
            let vc = segue.destination as? addJourneyVC
            vc?.place = placeTitle.text!
        }
    }

    @objc
    func addTapped() {
        performSegue(withIdentifier: "addJourney", sender: self)
    }
    
}

