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
        setUpCustomButtons()
        
        if Auth.auth().currentUser != nil {
        }
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
        }
    func setUpCustomButtons() {
        let googleButton = GIDSignInButton()
        googleButton.frame = CGRect(x: 16, y:116, width: view.frame.width-32, height: 50)
        view.addSubview(googleButton)
        
        let customGoogleButton = UIButton(type: .system)
        customGoogleButton.frame = CGRect(x: 16, y:116+66, width: view.frame.width-32, height: 50)
        customGoogleButton.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        customGoogleButton.setTitle("Login with Google", for: .normal)
        customGoogleButton.setTitleColor(.white, for: .normal)
        customGoogleButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        customGoogleButton.addTarget(self, action: #selector(handleCustomGoogleLogin), for: .touchUpInside)
        view.addSubview(customGoogleButton)
        }
    
    @objc func handleCustomGoogleLogin() {
        GIDSignIn.sharedInstance().signIn()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

