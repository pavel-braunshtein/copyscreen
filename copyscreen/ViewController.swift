//
//  ViewController.swift
//  copyscreen
//
//  Created by Pavel on 17.08.2023.
//

import UIKit
import SwiftUI
final class MovieDetailsViewController: UIViewController {

   let stackView = UIStackView()
   let stackView2 = UIStackView()
    
    
    let dividerView = UIView()
    let passwordToggleButton = UIButton(type: .custom)
    
    let extraTitle: UILabel = {
        let label = UILabel()
        label.text = "ExtraTitle"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        label.textColor = .red
        return label
    }()
    
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "EVON"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textAlignment = .center
        label.textColor = .black
        
        return label
    }()
    
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.text = "Discover upcoming events\nnear you"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        label.textColor = .systemGray
        
        return label
    }()
    
    
    let usernameTextField: UITextField = {
        let usernameTextField = UITextField()
        usernameTextField.placeholder = "Username"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.backgroundColor = .lightGray
        
        return usernameTextField
    }()
    
    
    
    let passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.backgroundColor = .lightGray
        
        return passwordTextField
    }()
    
    
    let button: UIButton = {
        let button = UIButton()
        
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 2
        button.setTitleColor(.blue, for: .highlighted)
        
        return button
    }()
    
    
    let buttonn: UIButton = {
        let buttonn = UIButton()
        
        buttonn.setTitle("Log In", for: .normal)
        buttonn.backgroundColor = .white
        buttonn.setTitleColor(.link, for: .normal)
        buttonn.layer.borderColor = UIColor.link.cgColor
        buttonn.layer.borderWidth = CGFloat(1)
        buttonn.layer.cornerRadius = 2
        buttonn.setTitleColor(.blue, for: .highlighted)
        
        return buttonn
    }()
    
    
    let button3: UIButton = {
        let button3 = UIButton()
        
        button3.setTitle("Skip for now", for: .normal)
        button3.backgroundColor = .white
        button3.setTitleColor(.link, for: .normal)
        button3.setTitleColor(.blue, for: .highlighted)
        button3.layer.cornerRadius = 2

        return button3
    }()
    
    
    let logo: UIImageView = {
        let logo = UIImageView(image: UIImage(named: "Evon2"))
        logo.layer.cornerRadius = 365
        return logo
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
    
    
    
    func style() {
        view.backgroundColor = .white
        
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.distribution = .fillProportionally
//        stackView.layer.borderColor = UIColor.red.cgColor
//        stackView.layer.borderWidth = CGFloat(1)
        
        
        
        stackView2.axis = .vertical
        stackView2.spacing = 10
        stackView2.distribution = .fillProportionally
//        stackView2.layer.borderColor = UIColor.blue.cgColor
//        stackView2.layer.borderWidth = CGFloat(1)
        
        
        
        
        
        passwordToggleButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        passwordToggleButton.setImage(UIImage(systemName: "eye.slash.fill"), for: .selected)
        passwordTextField.rightView = passwordToggleButton
        passwordTextField.rightViewMode = .always
        
        
        
        
        
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        extraTitle.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        logo.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        buttonn.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        stackView2.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout() {
        // In the future use Stack View
//        view.addSubview(titleLabel)
//        view.addSubview(subtitleLabel)
//        view.addSubview(usernameTextField)
//        view.addSubview(dividerView)
//        view.addSubview(passwordTextField)
//        view.addSubview(extraTitle)
        view.addSubview(stackView)
        stackView.addArrangedSubview(logo)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(subtitleLabel)
        //stackView.addArrangedSubview(usernameTextField)
        stackView.addArrangedSubview(dividerView)
        //stackView.addArrangedSubview(passwordTextField)
        //stackView.addArrangedSubview(extraTitle)
        view.addSubview(stackView2)
        stackView2.addArrangedSubview(button)
        stackView2.addArrangedSubview(buttonn)
        stackView2.addArrangedSubview(button3)
        
//
//        NSLayoutConstraint.activate([
//            logo.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 250),
//            logo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            logo.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: -16),
//            logo.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -550),
//            button3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10)
//
//        ])
        
       
        NSLayoutConstraint.activate([
            logo.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            logo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logo.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -90),
            
            titleLabel.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 80)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 140),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 80),
//            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
           
            
        ])
        NSLayoutConstraint.activate([
            stackView2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 30),
            stackView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            stackView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            stackView2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 200)
           
            
        ])
        
//        //extratitle
//        NSLayoutConstraint.activate([
//            extraTitle.bottomAnchor.constraint(equalToSystemSpacingBelow: titleLabel.topAnchor, multiplier: 0),
//            extraTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            extraTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            extraTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
//
//
//        ])
//
//        //title
//        NSLayoutConstraint.activate([
//            subtitleLabel.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 1),
//            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
//        ])
//
//        //subtitle
//        NSLayoutConstraint.activate([
//            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            subtitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            subtitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
//        ])
//
//        //usernameTextField
//        NSLayoutConstraint.activate([
//            usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            usernameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            usernameTextField.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 15),
//            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
//        ])
//
//        // dividerView
//        dividerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        dividerView.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 1).isActive = true
//        dividerView.heightAnchor.constraint(equalToConstant: 1).isActive = true
//        dividerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
//        dividerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
//
//        //passwordTextField
//        NSLayoutConstraint.activate([
//            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            passwordTextField.topAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: 10),
//            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
//        ])
    }
    struct MovieDetailsViewControllerRepresentable: UIViewRepresentable {
        func makeUIView(context: Context) -> some UIView {
            MovieDetailsViewController().view
        }
        func updateUIView(_ uiView: UIViewType, context: Context) {
        }
    }
    
    struct MovieDetailsViewController_Previews: PreviewProvider {
        static var previews: some View {
            MovieDetailsViewControllerRepresentable()
                .edgesIgnoringSafeArea(.all)
        }
        
    }
}
