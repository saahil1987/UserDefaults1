//
//  ViewController.swift
//  UserDefaults
//
//  Created by Saahil Kaushal on 11/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }

    @IBAction func loginBtn(_ sender: UIButton) {
        UserDefaults.standard.set(nameText.text, forKey: "name")
        UserDefaults.standard.set(emailText.text, forKey: "email")
        UserDefaults.standard.set(passwordText.text, forKey: "password")
    
    }
    func getData(){
        let name = UserDefaults.standard.string(forKey: "name")
        let email = UserDefaults.standard.string(forKey: "email")
        let password = UserDefaults.standard.string(forKey: "Password")
        
        print("your name is\(name),your emailID is\(email),your password is\(password)")
        
    }
    
}

