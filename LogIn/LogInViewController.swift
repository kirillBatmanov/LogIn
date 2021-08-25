//
//  ViewController.swift
//  LogIn
//
//  Created by Кирилл Батманов on 24.08.2021.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segue = segue.destination as? WelcomeViewController else {return}
        segue.userName = userNameTF.text
    }
    
    @IBAction func showUserName(_ sender: Any) {
        let alert = UIAlertController(
            title: "Don't worry",
            message: "Your username is Alexey",
            preferredStyle: .alert
        )
        
        let okeyButton = UIAlertAction(title: "OK", style: .cancel)
        
        alert.addAction(okeyButton)
        present(alert, animated: true)
    }
    
    @IBAction func showPassword(_ sender: Any) {
        let alert = UIAlertController(
            title: "Don't worry",
            message: "Your password is 123",
            preferredStyle: .alert
        )
        
        let okeyButton = UIAlertAction(title: "OK", style: .cancel)
        
        alert.addAction(okeyButton)
        present(alert, animated: true)
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        if userNameTF.text == "Alexey" && passwordTF.text == "123" {
            performSegue(withIdentifier: "correctNameAndPassword", sender: nil)
        } else {
            let alert = UIAlertController(
            title: "Invalid login or password",
            message: "Please, enter correct login and password",
            preferredStyle: .alert
        )
        
            let okeyButton = UIAlertAction(title: "OK", style: .cancel)
        
        alert.addAction(okeyButton)
        present(alert, animated: true)
            passwordTF.text = ""
            
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        dismiss(animated: true)
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

