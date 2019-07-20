//
//  DiscoverTable.swift
//  JakartaLearningProject
//
//  Created by Steven Gunawan on 19/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit
var tableCellSelected:Int = 0

class DiscoverTable: UITableView, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var collectionViewOutlet: KotuCollection!
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  row = indexPath.row
        
        if  row == 0 {
            let  cell = tableView.dequeueReusableCell(withIdentifier: "kotutableviewcell") as! KotuTableViewCell
            cell.selectionStyle = .none
//            cell.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap(_:))))
            return cell
        } else {
            let  cell = tableView.dequeueReusableCell(withIdentifier: "jakpustableviewcell") as! JakpusTableViewCell
            cell.selectionStyle = .none
//            cell.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap(_:))))
            return cell
        }
    }
    
    @objc func tap(_ sender: UITapGestureRecognizer) {
        print("selected")
    }
    
}
