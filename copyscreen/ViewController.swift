//
//  ViewController.swift
//  copyscreen
//
//  Created by Pavel on 17.08.2023.
//

import UIKit
import SwiftUI
final class MovieDetailsViewController: UIViewController {

    
    
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
        label.text = "Title"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        label.textColor = .red
        
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "subtitle"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textAlignment = .center
        label.textColor = .red
        
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
    func style() {
        view.backgroundColor = .orange
        
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
    }
    
    func layout() {
        // In the future use Stack View
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(usernameTextField)
        view.addSubview(dividerView)
        view.addSubview(passwordTextField)
        view.addSubview(extraTitle)
    
        //extratitle
        NSLayoutConstraint.activate([
            extraTitle.bottomAnchor.constraint(equalToSystemSpacingBelow: titleLabel.topAnchor, multiplier: 0),
            extraTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            extraTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            extraTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
            
        
        ])
        
        //title
        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 1),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        //subtitle
        NSLayoutConstraint.activate([
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subtitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            subtitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        //usernameTextField
        NSLayoutConstraint.activate([
            usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            usernameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            usernameTextField.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 15),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        // dividerView
        dividerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dividerView.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 1).isActive = true
        dividerView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        dividerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        dividerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        //passwordTextField
        NSLayoutConstraint.activate([
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
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
