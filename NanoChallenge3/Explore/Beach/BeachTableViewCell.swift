//
//  BeachTableViewCell.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 13/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class BeachTableViewCell: UITableViewCell {

    var sampleData = [
           [
               "picture" : #imageLiteral(resourceName: "Gunung_Gede"),
               "txtPantai" : "Pantai Nusa Dua",
               "txtWaktu" : "20 min",
           ],
           
           [
               "picture" : #imageLiteral(resourceName: "Gunung_Gede"),
               "txtPantai" : "Pantai Nusa Dua",
               "txtWaktu" : "20 min",
           ],

           
           [
               "picture" : #imageLiteral(resourceName: "Gunung_Gede"),
               "txtPantai" : "Pantai Nusa Dua",
               "txtWaktu" : "20 min",
           ],

           
           [
               "picture" : #imageLiteral(resourceName: "Gunung_Gede"),
               "txtPantai" : "Pantai Nusa Dua",
               "txtWaktu" : "20 min",
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
        
        collectionView.register(UINib(nibName: "BeachCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BeachCollectionViewCellID")
    }
    
}

extension BeachTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleData.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BeachCollectionViewCellID", for: indexPath) as! BeachCollectionViewCell
        
        let model = sampleData[indexPath.row]
        cell.productImagePantai.image = model["picture"] as? UIImage
        cell.productNamaPantaiLabel.text = model["txtPantai"] as? String
        cell.productWaktuPantaiLabel.text = model["txtWaktu"] as? String
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: self.frame.width / 2.4, height: 130)
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
              return UIEdgeInsets.init(top: 0, left: 12, bottom: 12, right: 12)
          }
       
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
           return 5
       }
}
