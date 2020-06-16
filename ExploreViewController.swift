//
//  ExploreViewController.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 13/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView(){
        //regis tableview
        tableView.register(UINib(nibName: "HeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "headerTableViewCellID")
        
        tableView.register(UINib(nibName: "MountainTableViewCell", bundle: nil), forCellReuseIdentifier: "MountainTableViewCell")
        
        tableView.register(UINib(nibName: "BeachTableViewCell", bundle: nil), forCellReuseIdentifier: "BeachTableViewCell")
    }

}

extension ExploreViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
                if indexPath.row == 0 {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "headerTableViewCellID") as! HeaderTableViewCell
                    cell.delegate = self
//                    cell.backgroundColor = .red
                    return cell
                } else if indexPath.row == 1 {
                   let cell = tableView.dequeueReusableCell(withIdentifier: "MountainTableViewCell") as! MountainTableViewCell
//                    cell.backgroundColor = .blue
                    return cell
                } else {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "BeachTableViewCell") as! BeachTableViewCell
                    cell.backgroundColor = .yellow
                    return cell
                }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
    if indexPath.row == 0 {
        return 265
    } else if indexPath.row == 1 {
        return 340
    } else {
        return 340
    }
    
}
}

extension ExploreViewController: HeaderTableViewCellDelegate {
    func moveToDetailExplore() {
        let dest = UIStoryboard(name: "Main", bundle: nil)
        let vcDest = dest.instantiateViewController(identifier: "DetailExplore")
        self.navigationController?.pushViewController(vcDest, animated: true)
    }
    
    
}
