//
//  Explore1TableViewCell.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 12/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class Explore1TableViewCell: UITableViewCell {

    var sampleData = [
        [
            "picture" : #imageLiteral(resourceName: "gunung_ceremai"),
            "txtRecommendation" : "Recommendation",
            "txtDestination" : "Nusa Penida",
        ],
        
        [
            "picture" : #imageLiteral(resourceName: "nusa_penida"),
            "txtRecommendation" : "Recommendation",
            "txtDestination" : "Seminyak",
        ],
        
        [
            "picture" : #imageLiteral(resourceName: "nusa_penida"),
            "txtRecommendation" : "Recommendation",
            "txtDestination" : "Nusa Dua",
        ],
        
        [
            "picture" : #imageLiteral(resourceName: "nusa_penida"),
            "txtRecommendation" : "Recommendation",
            "txtDestination" : "Lombok",
        ],
        
        [
            "picture" : #imageLiteral(resourceName: "nusa_penida"),
            "txtRecommendation" : "Recommendation",
            "txtDestination" : "Anyer",
        ],
    ]
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
    }
    
    func setupCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(ExploreCollectionViewCell.self, forCellWithReuseIdentifier: "ExploreCollectionViewCell")
    }
    
}

extension Explore1TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleData.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExploreCollectionViewCell", for: indexPath) as! ExploreCollectionViewCell
            cell.backgroundColor = .black
            cell.layer.cornerRadius = 17
//    
        let img = cell.viewWithTag(1) as! UIImageView
        let txt1 = cell.viewWithTag(2) as! UILabel
        let txt2 = cell.viewWithTag(3) as! UILabel
//
        let model = sampleData[indexPath.row]
        img.image = model ["picture"] as? UIImage
        txt1.text = model ["txtRecommendation"] as? String
        txt2.text = model ["txtDestination"] as? String

//        cell.imgCell.image = model["picture"] as! UIImage
//        cell.txtRecommendation.text = model["txtRecommendation"] as! String
//        cell.txtDestination.text = model["txtDestination"] as! String
        
        return cell
    }
    

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 310, height: 170)
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 0, left: 16, bottom: 0, right: 16)
    }
}
