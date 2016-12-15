//
//  ProfileViewController.swift
//  iOS-2
//
//  Created by Shahin on 12/8/16.
//  Copyright © 2016 Shahin. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, LoginViewControllerDelegate {
    @IBOutlet weak var nameLabel: UILabel!
    
    //var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //nameLabel.text = name
        
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.performSegue(withIdentifier: "go to login", sender: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "go to login" {
            let loginViewController = segue.destination as! LoginViewController
            loginViewController.delegate = self
        }
    }
    
    
    func loginViewControllerDidCancel(_ lvc: LoginViewController){
        print("canceled")
        dismiss(animated: true, completion: nil)
    }
    func loginViewController(_ lvc: LoginViewController, didLoginWithUsername username: String?, andPassword password: String?) {
        print("logged in with username: \(username) and password: \(password)")
        
        var tweet = Tweet(text: "asd", username: "asdasdasd", dateTime: "asdasd")
        
        var tweet2 = Tweet()
        tweet2.text = "asd"
        
    }
    
}
