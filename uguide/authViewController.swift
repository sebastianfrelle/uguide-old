//
//  ViewController.swift
//  uguide
//
//  Created by Sebastian Frelle Koch on 2/19/18.
//  Copyright © 2018 Sebastian Frelle Koch. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class authViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signIn()
        // Do any additional setup after loading the view, typically from a nib.
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

