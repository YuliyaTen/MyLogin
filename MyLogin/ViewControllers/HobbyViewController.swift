//
//  HobbyViewController.swift
//  MyLogin
//
//  Created by Yuliya Ten on 10.07.2022.
//

import UIKit

class HobbyViewController: UIViewController {

    @IBOutlet var firstHobby: UILabel!
    @IBOutlet var secondHobby: UILabel!
    @IBOutlet var thirdHobby: UILabel!
    
    @IBOutlet var firstImage: UIImageView!
    @IBOutlet var secondImage: UIImageView!
    @IBOutlet var thirdImage: UIImageView!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.fullName) Hobbies"
        firstHobby.text = user.person.firstHobby
        secondHobby.text = user.person.secondHobby
        thirdHobby.text = user.person.thirdHobby
        firstImage.image = UIImage(named: user.person.firstPhoto)
        secondImage.image = UIImage(named:user.person.secondPhoto)
        thirdImage.image = UIImage(named:user.person.thirdPhoto)
    }
}
