//
//  MountainTableViewCell.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 13/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class MountainTableViewCell: UITableViewCell {

    var sampleData = [
           [
               "picture" : #imageLiteral(resourceName: "Gunung_Gede"),
               "txtGunung" : "Salak Mountain",
               "txtWaktu" : "20 min",
           ],
           
           [
               "picture" : #imageLiteral(resourceName: "gunung bromo"),
               "txtGunung" : "Bromo Mountain",
               "txtWaktu" : "20 min",
           ],
           
           [
               "picture" : #imageLiteral(resourceName: "gunung ciremai"),
               "txtGunung" : "Ciremai Mountain",
               "txtWaktu" : "20 min",
           ],
           
           [
               "picture" : #imageLiteral(resourceName: "gunung bromo"),
               "txtGunung" : "Bromo Mountain",
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
        
        collectionView.register(UINib(nibName: "MountainCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MountainCollectionViewCellID")
    }
    
}

extension MountainTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleData.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MountainCollectionViewCellID", for: indexPath) as! MountainCollectionViewCell
//        cell.backgroundColor = .black
        
        let model = sampleData[indexPath.row]
        cell.productImage.image = model["picture"] as? UIImage
        cell.productMountainLabel.text = model ["txtGunung"] as? String
        cell.productTimeLabel.text = model ["txtWaktu"] as? String
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: self.frame.width / 2.3, height: 130)
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
              return UIEdgeInsets.init(top: 0, left: 12, bottom: 12, right: 12)
          }
       
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
           return 5
       }
    
    
}
