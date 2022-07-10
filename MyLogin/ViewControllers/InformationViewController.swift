//
//  InformationViewController.swift
//  MyLogin
//
//  Created by Yuliya Ten on 09.07.2022.
//

import UIKit

class InformationViewController: UIViewController {
    
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var occupationLabel: UILabel!
    
    var user: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        photoImage.image = UIImage(named: user.person.photo)
        firstNameLabel.text = user.person.firstName
        lastNameLabel.text = user.person.lastName
        genderLabel.text = user.person.gender
        cityLabel.text = user.person.city
        occupationLabel.text = user.person.occupation
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageViewController = segue.destination as? HobbyViewController else { return }
        imageViewController.user = user
    }
    

}
