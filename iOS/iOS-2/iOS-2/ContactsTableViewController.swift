//
//  ContactsTableViewController.swift
//  iOS-2
//
//  Created by Shahin on 12/15/16.
//  Copyright © 2016 Shahin. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    //var tweets: [Tweet]?
    //var user: [String:AnyObject]?
    
    //@IBOutlet weak var tableView: UITableView!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return JaheshDataProvider.sharedInstance.users.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //if indexPath.section == 0
        //{
            let cell = tableView.dequeueReusableCell(withIdentifier: "contact cell", for: indexPath) as! ContactsTableViewCell
    
        let index = indexPath.row
        let user = JaheshDataProvider.sharedInstance.users[index]
        
            cell.sectionNameLabel.text = "\(user.name!) is \(user.age!) yrs. old"
            
            return cell
        //}
        /*else{
            // section 1
            let cell = tableView.dequeueReusableCell(withIdentifier: "alt contact cell", for: indexPath)
            cell.textLabel?.text = "cell: section: \(indexPath.section) and row: \(indexPath.row)"
            
            return cell
            
        }*/
        
        
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "go to details by segue" {
            let contactDetails = segue.destination as! ContactDetailsViewController
            let tableViewCell = sender as! UITableViewCell
            let indexPath = tableView.indexPath(for: tableViewCell)!
            let user = JaheshDataProvider.sharedInstance.users[indexPath.row]
            contactDetails.rowTitle = user.name
            //contactDetails.rowTitle = ???
        }
        else if segue.identifier == "go to details from code" {
            let contactDetails = segue.destination as! ContactDetailsViewController
            let indexPath = sender as! IndexPath
            let user = JaheshDataProvider.sharedInstance.users[indexPath.row]
            contactDetails.rowTitle = user.name
        }
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "go to details from code", sender: indexPath)
        
    }
}
