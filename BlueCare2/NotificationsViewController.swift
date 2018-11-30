//
//  NotificationsViewController.swift
//  BlueCare2
//
//  Created by Seyedeh Samaneh Hoseini on 11/10/18.
//  Copyright © 2018 Seyedeh Samaneh Hoseini. All rights reserved.
//

import UIKit




class NotificationsViewController: UIViewController {

    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                                selector: #selector(toggleSideMenu),
                                                name: NSNotification.Name("ToggleSlideMenu"),
                                                object: nil)
        
        // Do any additional setup after loading the view.
    }

    
    @objc func toggleSideMenu(){
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuConstraint.constant = -240
        } else {
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
        }
    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
