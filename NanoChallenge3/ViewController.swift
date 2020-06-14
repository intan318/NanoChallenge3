//
//  ViewController.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 09/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataBadge = [Badges]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        initDataBadges()
    }
    
    func initDataBadges() {
        let badge1 = Badges(title: "Go for a journey", point: "+100", badgeImage: UIImage(named: "badge-1"))
        let badge2 = Badges(title: "Share a journey", point: "+150", badgeImage: UIImage(named: "badge-2"))
        let badge3 = Badges(title: "Give Rating", point: "+200", badgeImage: UIImage(named: "badge-3"))
        let badge4 = Badges(title: "Finish a Journey", point: "+250", badgeImage: UIImage(named: "badge-4"))
        let badge5 = Badges(title: "Join the Club", point: "+300", badgeImage: UIImage(named: "badge-5"))
        let badge6 = Badges(title: "Invite Friend", point: "+350", badgeImage: UIImage(named: "badge-6"))
        let badge7 = Badges(title: "Give Rating", point: "+400", badgeImage: UIImage(named: "badge-7"))
        let badge8 = Badges(title: "Join the Club", point: "+450", badgeImage: UIImage(named: "badge-8"))
        let badge9 = Badges(title: "Go for a journey", point: "+100", badgeImage: UIImage(named: "badge-lock"))
        let badge10 = Badges(title: "Share a journey", point: "+150", badgeImage: UIImage(named: "badge-lock"))
        let badge11 = Badges(title: "Give Rating", point: "+200", badgeImage: UIImage(named: "badge-lock"))
        let badge12 = Badges(title: "Finish a Journey", point: "+250", badgeImage: UIImage(named: "badge-lock"))
        
        dataBadge.append(badge1)
        dataBadge.append(badge2)
        dataBadge.append(badge3)
        dataBadge.append(badge4)
        dataBadge.append(badge5)
        dataBadge.append(badge6)
        dataBadge.append(badge7)
        dataBadge.append(badge8)
        dataBadge.append(badge9)
        dataBadge.append(badge10)
        dataBadge.append(badge11)
        dataBadge.append(badge12)
        
        collectionView.reloadData()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataBadge.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "viewCellBadges", for: indexPath) as! BadgesCollectionViewCell
        
        let badge = dataBadge[indexPath.row]
        cell.badgeLabel.text = badge.title
        cell.pointLabel.text = badge.point
        cell.imageView.image = badge.badgeImage
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 160)
    }


}

