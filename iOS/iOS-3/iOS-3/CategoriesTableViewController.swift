//
//  CategoriesTableViewController.swift
//  iOS-3
//
//  Created by Shahin on 12/16/16.
//  Copyright © 2016 Shahin. All rights reserved.
//

import UIKit

// Model
struct Category {
    var name: String?
    var id: String?
    var imgSrc: String?
    var videoCnt: Int?
}
// end: model


class CategoriesTableViewController: UITableViewController {

    // model
    var categories: [Category] = [Category]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // fill categories
        
        let categoriesURL = URL(string: "http://www.aparat.com/etc/api/categories")
        
        //let request = URLRequest(url: categoriesURL!)
        
        let completion = {
            (data: Data?, urlResponse: URLResponse?, error: Error?) in
            if let er = error {
                print("we had an error \(er)")
            }else{
                // must have data
                if let d = data {
                    
                    //if let jsonString = String.init(data: d, encoding: .utf8) {
                    
                    
                    //do {
                    //    let json = try JSONSerialization.jsonObject(with: d, options: .allowFragments)
                    
                    //} catch {
                        
                    //}
                    
                    let json = try? JSONSerialization.jsonObject(with: d, options: .allowFragments)
                    
                    if let object = json as? [String:AnyObject] {
                        if let categoriesArray = object["categories"] as? [[String:String]] {
                            
                            for category in categoriesArray
                            {
                                let videoCnt = Int(category["videoCnt"]!)
                                
                                let cat = Category(name: category["name"], id: category["id"], imgSrc: category["imgSrc"], videoCnt: videoCnt)
        
                                self.categories.append(cat)
                            }
                            
                        }else {
                            print("json data is not valid")
                        }
                        
                        
                    }else {
                        print("json data is not valid")
                    }
                    
                    //}
                    
                    
                }else {
                    print("data is null")
                }
                
            }
        }
        
        URLSession.shared.dataTask(with: categoriesURL!, completionHandler: completion).resume()
        
        
        
        //URLSession
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    

}
