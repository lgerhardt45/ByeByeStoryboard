//
//  MainViewController.swift
//  ByeByeStoryboard
//
//  Created by Lukas Gerhardt on 02.08.19.
//  Copyright © 2019 Lukas Gerhardt. All rights reserved.
//

// MARK: Imports
import UIKit

// MARK: - MainViewController
class MainViewController: UIViewController {

    // MARK: Overridden/ Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: Private Instance Methods
    /// Handles the UI setup of the MainViewController
    private func setupView() {
        view.backgroundColor = .white
        
        let loginButton = createLoginButton()
        view.addSubview(loginButton)
        // button needs to be added to subview before adding constraints
        loginButtonConstraintsInit(loginButton: loginButton)

    }
    
    /// Creates a UIButton with title "Login" and returns it
    private func createLoginButton() -> UIButton {
        var loginButton: UIButton!
        
        loginButton = UIButton(type: .system)
        loginButton.backgroundColor = .blue
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        loginButton.setTitleColor(.white, for: .normal)
        
        loginButton.layer.cornerRadius = 10
        loginButton.translatesAutoresizingMaskIntoConstraints = false

        return loginButton
    }
    
    /// Activates the specific constraints for the loginButton
    private func loginButtonConstraintsInit(loginButton: UIButton) {
        NSLayoutConstraint.activate(
            [
                loginButton.heightAnchor.constraint(equalToConstant: 50),
                loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
                loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64)
            ]
        )
    }
    
}

