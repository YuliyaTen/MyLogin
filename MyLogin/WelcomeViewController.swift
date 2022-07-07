//
//  WelcomeViewController.swift
//  MyLogin
//
//  Created by Yuliya Ten on 07.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    var user = ""
    
    @IBOutlet var userLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = "Welcome, \(user)!"
    }
    
}
