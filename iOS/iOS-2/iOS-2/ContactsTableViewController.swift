//
//  ContactsTableViewController.swift
//  iOS-2
//
//  Created by Shahin on 12/15/16.
//  Copyright © 2016 Shahin. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    var tweets: [Tweet]?
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "contact cell", for: indexPath) as! ContactsTableViewCell
            
            cell.sectionNameLabel.text = "cell: section: \(indexPath.section) and row: \(indexPath.row)"
            
            return cell
        }else{
            // section 1
            let cell = tableView.dequeueReusableCell(withIdentifier: "alt contact cell", for: indexPath)
            cell.textLabel?.text = "cell: section: \(indexPath.section) and row: \(indexPath.row)"
            
            return cell
            
        }
        
        
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
}
