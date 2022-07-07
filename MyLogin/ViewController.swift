//
//  ViewController.swift
//  MyLogin
//
//  Created by Yuliya Ten on 07.07.2022.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "Yuliya"
    private let password = "Ten10"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeViewController = segue.destination as? WelcomeViewController else {return}
        welcomeViewController.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func logInButtonTapped() {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                title: "Invalid user name or password",
                message: "Please, enter correct user name or password",
                textField: passwordTextField
            )
           return
        }
        performSegue(withIdentifier: "showWelcomeViewController", sender: nil)
    }
    
    @IBAction func dataRemind(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Mistake!", message: "Your user name is \(user)")
        : showAlert(title: "Mistake!", message: "Your password is \(password)")
    }
    
}

// MARK: - UIalertController
extension LogInViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: title, style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
