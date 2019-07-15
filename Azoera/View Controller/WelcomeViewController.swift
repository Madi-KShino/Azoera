//
//  WelcomeViewController.swift
//  Azoera
//
//  Created by Madison Kaori Shino on 7/15/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    //Outlets
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var emailTextField: AzoeraTextField!
    @IBOutlet weak var passwordTextField: AzoeraTextField!
    @IBOutlet weak var confirmPasswordTextField: AzoeraTextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var faqButton: UIButton!
    @IBOutlet weak var signMeUpButton: AzoeraButton!
    
    //Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()

    }
    
    //Helper Functions
    func setUpUI() {
        signUpButton.rotate()
        loginButton.rotate()
        signMeUpButton.addCornerRadius()
        loginButton.setTitleColor(.subltleTextColor, for: .normal)
        signUpButton.setTitleColor(.mainTextColor, for: .normal)
        faqButton.setTitleColor(.azoeraGreen, for: .normal)
        helpButton.setTitleColor(.mainTextColor, for: .normal)
        welcomeLabel.textColor = .mainTextColor
        detailsLabel.textColor = .subltleTextColor
        self.view.backgroundColor = .azoeraBackground
    }
    
    //Actions
    
    @IBAction func loginToggleButtonTapped(_ sender: Any) {
        toggleLogin()
    }
    
    @IBAction func signupToggleButtonTapped(_ sender: Any) {
        toggleSignup()
    }
    
    func toggleLogin() {
        UIView.animate(withDuration: 0.2) {
            self.loginButton.setTitleColor(.mainTextColor, for: .normal)
            self.signUpButton.setTitleColor(.subltleTextColor, for: .normal)
            self.helpButton.setTitle("Forgot?", for: .normal)
            self.faqButton.setTitle("Remind", for: .normal)
            self.signMeUpButton.setTitle("Log In", for: .normal)
            self.confirmPasswordTextField.isHidden = true
        }
    }
    
    func toggleSignup() {
        UIView.animate(withDuration: 0.2) {
            self.loginButton.setTitleColor(.subltleTextColor, for: .normal)
            self.signUpButton.setTitleColor(.mainTextColor, for: .normal)
            self.helpButton.setTitle("Help?", for: .normal)
            self.faqButton.setTitle("FAQ", for: .normal)
            self.signMeUpButton.setTitle("Sign Up", for: .normal)
            self.confirmPasswordTextField.isHidden = false
        }
    }
}
