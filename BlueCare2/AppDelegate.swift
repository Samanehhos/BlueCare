//
//  AppDelegate.swift
//  BlueCare2
//
//  Created by Seyedeh Samaneh Hoseini on 11/10/18.
//  Copyright © 2018 Seyedeh Samaneh Hoseini. All rights reserved.
//

import UIKit
import Firebase
//import FirebaseCore
//import FirebaseMesaging
//import FirebaseInstanceID
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?)
        -> Bool {
            
          // For iOS 10 display notification (sent via APNS)
//            if #available(iOS 10.0, *) {
//                UNUserNotificationCenter.current().requestAuthorization(options: [.alert .sound .badge]){ (isGranted, err) in
            
            
            
            if #available(iOS 10.0, *) {
                // For iOS 10 display notification (sent via APNS)
                UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
                
                let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
                UNUserNotificationCenter.current().requestAuthorization(
                    options: authOptions,
                    completionHandler: {_, _ in })
            } else {
                let settings: UIUserNotificationSettings =
                    UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
                application.registerUserNotificationSettings(settings)
            }
            
            
//                    if err != nil {
//
//                    } else {
//                        UNUserNotificationCenter.current().delegate = self
//                        Messaging.messaging().delegate = self
                        application.registerForRemoteNotifications()
//
                        FirebaseApp.configure()
//                    }
            
//
//                }
//            } else {
//                // Fallback on earlier versions
//            }
//            FirebaseApp.configure()
            return true
    }
//    func ConnectToFCM(){
//        Messaging.messaging().shouldEstablishDirectChannel = true
 

}

