//
//  WelcomeViewController.swift
//  LogIn
//
//  Created by Кирилл Батманов on 24.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var userName: String!
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var avatarUserImage: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let userName = self.userName else {return}
        greetingLabel.text = "Welcome, \(userName)!"
    
      
    }
    override func viewWillLayoutSubviews() {
        avatarUserImage.layer.cornerRadius = avatarUserImage.frame.width / 2
    }
    
    
    
}
