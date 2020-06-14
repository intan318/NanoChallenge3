//
//  WhatsNextTableViewCell.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 14/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class WhatsNextTableViewCell: UITableViewCell {

    var dataWhatsNext = [
        [
            "picture": #imageLiteral(resourceName: "nusapenida"),
            "txtNamaTempat": "Gunung Salak",
        ],
        
        [
            "picture": #imageLiteral(resourceName: "nusapenida"),
            "txtNamaTempat": "Gunung Salak",
        ],
        
        [
            "picture": #imageLiteral(resourceName: "nusapenida"),
            "txtNamaTempat": "Gunung Salak",
        ],
        
        [
            "picture": #imageLiteral(resourceName: "nusapenida"),
            "txtNamaTempat": "Gunung Salak",
        ],
        
        [
            "picture": #imageLiteral(resourceName: "nusapenida"),
            "txtNamaTempat": "Gunung Salak",
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
    
    collectionView.register(UINib(nibName: "WhatsNextCollectionView", bundle: nil), forCellWithReuseIdentifier: "WhatsNextCollectionViewID")
    }
    
}

extension WhatsNextTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataWhatsNext.count
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WhatsNextCollectionViewCellID", for: indexPath) as! WhatsNextCollectionViewCell
//        cell.backgroundColor = .black
        cell.layer.cornerRadius = 17
        
        let model = dataWhatsNext[indexPath.row]
        cell.productImage.image = model["picture"] as? UIImage
        cell.productNamaTempatLabel.text = model["txtNamaTempat"] as? String
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 310, height: 170)
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 0, left: 16, bottom: 0, right: 16)
    }
}
