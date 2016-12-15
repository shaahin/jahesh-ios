//
//  HelloViewController.swift
//  iOS-2
//
//  Created by Shahin on 12/2/16.
//  Copyright © 2016 Shahin. All rights reserved.
//
import UIKit

class HelloViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var name: UILabel!

    @IBAction func sayHelloFunction(_ sender: UIButton) {
        //name.text = "Hello " +
        name.text = "Hello \(nameField.text!), good morning!"
        nameField.text = ""
        //sender.titleLabel?.text = "text ios"
        sender.setTitle("iOS Button", for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    
        if segue.identifier == "go to profile via code" {
            let profileViewController = segue.destination as! ProfileViewController
           // profileViewController.name = nameField.text
        }
    }
    
    @IBAction func goToProfile(_ sender: UIButton) {
        if nameField.text != "" {
            self.performSegue(withIdentifier: "go to profile via code", sender: nil)
        }else {
            name.text = "Enter a Name"
        }
    }
}
