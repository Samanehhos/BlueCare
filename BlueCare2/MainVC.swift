//
//  MainVC.swift
//  BlueCare2
//
//  Created by Samantha Hoseini on 2018-11-29.
//  Copyright © 2018 Seyedeh Samaneh Hoseini. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    @IBAction func onMoreTapped() {
        print("Toggle side menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSlideMenu"), object:nil)

    }
}
