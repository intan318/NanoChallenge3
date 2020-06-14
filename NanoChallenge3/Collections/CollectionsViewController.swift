//
//  CollectionsViewController.swift
//  NanoChallenge3
//
//  Created by Intan Yoshana on 13/06/20.
//  Copyright © 2020 Intan Yoshana. All rights reserved.
//

import UIKit

class CollectionsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }
    

    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "NameTableViewCell", bundle: nil), forCellReuseIdentifier: "NameTableViewCellID")
        
        tableView.register(UINib(nibName: "WhatsNextTableViewCell", bundle: nil), forCellReuseIdentifier: "WhatsNextTableViewCellID")
        
        tableView.register(UINib(nibName: "MyCollectionsTableViewCell", bundle: nil), forCellReuseIdentifier: "MyCollectionsTableViewCellID")
    }

}

extension CollectionsViewController: UITableViewDelegate, UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "NameTableViewCellID") as! NameTableViewCell
        //            cell.backgroundColor = .red
                    return cell
    } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "WhatsNextTableViewCellID") as! WhatsNextTableViewCell
    //            cell.backgroundColor = .blue
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "MyCollectionsTableViewCellID") as! MyCollectionsTableViewCell
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
