//
//  FirebaseReference.swift
//  BlueCare2
//
//  Created by Samantha Hoseini on 2018-11-22.
//  Copyright © 2018 Seyedeh Samaneh Hoseini. All rights reserved.
//

//import Foundation
//import Firebase
//import FirebaseDatabase
//
//enum DBRef{
//    
//    case root
//    case users(uid:String)
//    
//    func reference() -> DatabaseReference
//    {
//        switch self{
//        case .root:
//            return rootRef
//        default:
//            return rootRef.child(path)
//        }  // end of SWIFT
//    }
//    
//    private var rootRef: DatabaseReference {
//        
//        return Database.database().reference()
//    }
//    
//    private var path: String{
//        switch self{
//        case .root:
//            return ""
//        case .users(let uid):
//            return "users/\(uid)"
//        }
//    }
//}
