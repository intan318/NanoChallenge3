//
//  MyCollectionsTableViewCell.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 14/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class MyCollectionsTableViewCell: UITableViewCell {

    var dataMyCollections = [
        [
            "picture" : #imageLiteral(resourceName: "Gunung_Gede"),
            "txtNamaTempat" : "Labuan Bajo",
            "txtWaktu" : "20 min",
        ],
        
        [
            "picture" : #imageLiteral(resourceName: "Gunung_Gede"),
            "txtNamaTempat" : "Lombok",
            "txtWaktu" : "20 min",
        ],
        
        [
            "picture" : #imageLiteral(resourceName: "gunung ciremai"),
            "txtNamaTempat" : "Ciremai Mountain",
            "txtWaktu" : "20 min",
        ],
        
        [
            "picture" : #imageLiteral(resourceName: "gunung bromo"),
            "txtNamaTempat" : "Bromo Mountain",
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
        
        collectionView.register(UINib(nibName: "MyCollectionsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MyCollectionsCollectionViewCellID")
    }
}

extension MyCollectionsTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataMyCollections.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionsCollectionViewCellID", for: indexPath) as! MyCollectionsCollectionViewCell
//        cell.backgroundColor = .black
        let model = dataMyCollections[indexPath.row]
        cell.productImage.image = model ["picture"] as? UIImage
        cell.productNamaTempatLabel.text = model ["txtNamaTempat"] as? String
        cell.productWaktuLabel.text = model ["txtWaktu"] as? String
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width / 2.3, height: 130)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 0, left: 16, bottom: 8, right: 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
}
