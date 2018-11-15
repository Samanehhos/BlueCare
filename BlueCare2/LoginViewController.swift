//
//  ViewController.swift
//  BlueCare2
//
//  Created by Seyedeh Samaneh Hoseini on 11/10/18.
//  Copyright © 2018 Seyedeh Samaneh Hoseini. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userLoginField: UITextField!
   
    @IBOutlet weak var userPasswordField: UITextField!
    
    
//    var name = "Samaneh"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func LoginButtonTapped(_ sender: AnyObject) {
        let userEmail = userLoginField.text;
        let userPassword = userPasswordField.text;
        
        if ((userEmail.isEmpty)! || userPassword.isEmpty){
            displayMyAlertMessage("All fields are required");
            return;
        }
    }
    //    override func viewDidAppear(_ animated: Bool) {
//        self.performSegue(withIdentifier: "openNotification", sender: self);
//    }

    func displayMyAlertMessage(userMessage:String){
        var myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        let okAction = UIAlertAction(title:"OK", style:UIAlertActionStyle.Default, handler:nil);
        
        myAlert.addAction(okAction);
        self.presentedViewController(myAlert, animated:true, completion:nil);
    }
}

