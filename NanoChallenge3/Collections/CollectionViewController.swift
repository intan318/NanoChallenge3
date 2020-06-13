//
//  CollectionViewController.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 11/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView(){
        tableView.delegate = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "HeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "HeaderTableViewCell")
        
        tableView.register(UINib(nibName: "WhatsNextTableViewCell", bundle: nil), forCellReuseIdentifier: "WhatsNextTableViewCell")
        
        tableView.register(UINib(nibName: "MyCollectionsTableViewCell", bundle: nil), forCellReuseIdentifier: "MyCollectionsTableViewCell")
    }
}

extension CollectionViewController: UITableViewDelegate, UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell") as! HeaderTableViewCell
//            cell.backgroundColor = .red
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "WhatsNextTableViewCell") as! WhatsNextTableViewCell
//            cell.backgroundColor = .blue
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCollectionsTableViewCell") as! MyCollectionsTableViewCell
//            cell.backgroundColor = .yellow
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            
        if indexPath.row == 0 {
            return 184
        } else if indexPath.row == 1 {
            return 290
        } else {
            return 310
        }
    }
    
}
