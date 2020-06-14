//
//  WhatsNextTableViewCell.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 14/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class WhatsNextTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
    }

   func setupCollectionView(){
        
    }
    
}

extension WhatsNextTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}
