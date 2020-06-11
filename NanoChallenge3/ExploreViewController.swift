//
//  ExploreViewController.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 11/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    var imageArray = [UIImage(named: "nusa_penida"), UIImage(named: "gunung_bromo"), UIImage(named: "gunung_salak")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImgExploreCollectionView", for: indexPath)
        as! ImgExploreCollectionViewCell
        
        cell.imgCell.image = imageArray[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
