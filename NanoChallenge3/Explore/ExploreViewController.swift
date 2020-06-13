//
//  ExploreViewController.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 12/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupTableView()
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        //daftarin tableViewCell
        tableView.register(UINib(nibName: "Explore1TableViewCell", bundle: nil), forCellReuseIdentifier: "Explore1TableViewCell")
        
        tableView.register(UINib(nibName: "MountainsTableViewCell", bundle: nil), forCellReuseIdentifier: "MountainsTableViewCell")
        
        tableView.register(UINib(nibName: "BeachTableViewCell", bundle: nil), forCellReuseIdentifier: "BeachTableViewCell")
    }
    
}

extension ExploreViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Explore1TableViewCell") as! Explore1TableViewCell
//            cell.backgroundColor = .red
            return cell
        } else if indexPath.row == 1 {
           let cell = tableView.dequeueReusableCell(withIdentifier: "MountainsTableViewCell") as! MountainsTableViewCell
//            cell.backgroundColor = .blue
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeachTableViewCell") as! BeachTableViewCell
//            cell.backgroundColor = .yellow
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0 {
            return 265
        } else if indexPath.row == 1 {
            return 305
        } else {
            return 300
        }
    }
    
}
