//
//  HeaderTableViewCell.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 13/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupCollectionView()
    }

    func setupCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(HeaderCollectionViewCell.self, forCellWithReuseIdentifier: "HeaderCollectionViewCell")
    }
    
}

extension HeaderTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderCollectionViewCell", for: indexPath) as! HeaderCollectionViewCell
        cell.backgroundColor = .black
        cell.layer.cornerRadius = 17
    
        return cell
    }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 310, height: 170)
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
}
