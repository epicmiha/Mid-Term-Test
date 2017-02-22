//
//  ListViewController.swift
//  MidTet
//
//  Created by Student on 2017-02-21.
//  Copyright © 2017 MAPD114. All rights reserved.
////  Mykhailo Obelchak 300907244

import UIKit
import FirebaseAuth
import FirebaseDatabase

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return ItemCell()
    }
    
    
}
