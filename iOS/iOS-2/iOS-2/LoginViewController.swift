//
//  LoginViewController.swift
//  iOS-2
//
//  Created by Shahin on 12/15/16.
//  Copyright © 2016 Shahin. All rights reserved.
//

import UIKit

protocol LoginViewControllerDelegate {
    
    func loginViewController(_ lvc: LoginViewController, didLoginWithUsername username: String?, andPassword password: String?)
    func loginViewControllerDidCancel(_ lvc: LoginViewController)
}


class LoginViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var delegate: LoginViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func cancel(_ sender: UIButton) {
        //self.dismiss(animated: false, completion: nil)
        
        //????
        self.delegate?.loginViewControllerDidCancel(self)
        
    }
    @IBAction func login(_ sender: UIButton) {
        
        self.delegate?.loginViewController(self, didLoginWithUsername: username.text, andPassword: password.text)
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
