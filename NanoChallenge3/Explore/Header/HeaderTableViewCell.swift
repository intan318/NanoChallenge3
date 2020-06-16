//
//  HeaderTableViewCell.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 13/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

protocol HeaderTableViewCellDelegate: class {
    func moveToDetailExplore()
}

class HeaderTableViewCell: UITableViewCell {
    
    var sampleData = [
        [
            "picture" : #imageLiteral(resourceName: "nusapenida"),
            "txtRecommendation" : "Recommendation",
            "txtDestination" : "Nusa Penida",
        ],
        
        [
            "picture" : #imageLiteral(resourceName: "nusapenida"),
            "txtRecommendation" : "Recommendation",
            "txtDestination" : "Seminyak",
        ],
        
        [
            "picture" : #imageLiteral(resourceName: "nusapenida"),
            "txtRecommendation" : "Recommendation",
            "txtDestination" : "Nusa Dua",
        ],
        
        [
            "picture" : #imageLiteral(resourceName: "nusapenida"),
            "txtRecommendation" : "Recommendation",
            "txtDestination" : "Lombok",
        ],
        
        [
            "picture" : #imageLiteral(resourceName: "nusapenida"),
            "txtRecommendation" : "Recommendation",
            "txtDestination" : "Anyer",
        ],
    ]
    @IBOutlet weak var collectionView: UICollectionView!
    
    weak var delegate: HeaderTableViewCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupCollectionView()
    }

    func setupCollectionView(){
        
        collectionView.register(UINib(nibName: "HeaderCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "headerCollectionViewCellID")
    }
    
}

extension HeaderTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleData.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "headerCollectionViewCellID", for: indexPath) as! HeaderCollectionViewCell
        cell.backgroundColor = .black
//        cell.layer.cornerRadius = 17
    
        /*
        let img = cell.viewWithTag(1) as! UIImageView
        let txt1 = cell.viewWithTag(2) as! UILabel
        let txt2 = cell.viewWithTag(3) as! UILabel
        */
        let model = sampleData[indexPath.row]
        cell.productImage.image = model["picture"] as? UIImage
        cell.productRecommendationLabel.text = model ["txtRecommendation"] as? String
        cell.productDestinationLabel.text = model ["txtDestination"] as? String
        
        return cell
    }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 310, height: 170)
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 0, left: 12, bottom: 0, right: 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.delegate?.moveToDetailExplore()        
    }
    
}
