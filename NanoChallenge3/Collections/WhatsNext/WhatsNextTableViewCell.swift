//
//  WhatsNextTableViewCell.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 12/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class WhatsNextTableViewCell: UITableViewCell {

    var data = [
        ["text" :#imageLiteral(resourceName: "nusa_penida"),
        ],
        
        ["picture" :#imageLiteral(resourceName: "nusa_penida"),
        ],
        
        ["picture" :#imageLiteral(resourceName: "nusa_penida"),
        ],
        
        ["picture" :#imageLiteral(resourceName: "nusa_penida"),
        ],
        
        ["picture" :#imageLiteral(resourceName: "nusa_penida"),
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
        
        collectionView.register(WhatsNextCollectionViewCell.self, forCellWithReuseIdentifier: "WhatsNextCollectionViewCell")
    }

}

extension WhatsNextTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WhatsNextCollectionViewCell", for: indexPath) as! WhatsNextCollectionViewCell
        cell.backgroundColor = .black
        cell.layer.cornerRadius = 17
        
//        let img = cell.viewWithTag(1) as! UIImageView
//
//        let model = data[indexPath.row]
//        img.image = model ["picture"] as! UIImage
       
        return cell
    }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
              return CGSize(width: 310, height: 170)
          }
       
       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
           return UIEdgeInsets.init(top: 0, left: 16, bottom: 0, right: 16)
       }
    
}
