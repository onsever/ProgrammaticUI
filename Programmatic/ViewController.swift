//
//  ViewController.swift
//  Programmatic
//
//  Created by Onurcan Sever on 2022-02-25.
//

import UIKit

class ViewController: UIViewController {
    
//    private let containerView: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = UIColor.white
//        view.layer.cornerRadius = 20
//        view.layer.borderWidth = 1
//        view.layer.borderColor = UIColor.black.cgColor
//
//        return view
//    }()
//
//    private let imageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.image = UIImage(systemName: "person.fill")?.withRenderingMode(.alwaysOriginal)
//        imageView.clipsToBounds = false
//
//        return imageView
//    }()
//
//    private let textField: UITextField = {
//        let textField = UITextField()
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.placeholder = "Enter your email address"
//        textField.autocorrectionType = .no
//        textField.autocapitalizationType = .none
//        textField.font = UIFont.systemFont(ofSize: 16, weight: .bold)
//        textField.adjustsFontSizeToFitWidth = true
//
//        return textField
//    }()
    
    private var emailContainer: ContainerView!
    private var passContainer: ContainerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray4
        
        title = "Test"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.fill"), style: .done, target: self, action: #selector(didTapButton))
        
        emailContainer = ContainerView(viewController: self, icon: "lock.fill", placeholder: "Enter your password")
        
        print(emailContainer.getTextField().placeholder)
    }


    @objc private func didTapButton() {
        let vc = TestViewController()
        vc.strTitle = emailContainer.getTextField().placeholder
        navigationController?.pushViewController(vc, animated: true)
    }
}

//extension ViewController {
//
//    private func configureContainer() {
//        self.view.addSubview(containerView)
//
//        NSLayoutConstraint.activate([
//            containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
//            containerView.heightAnchor.constraint(equalToConstant: 50)
//        ])
//
//    }
//
//    private func configureImageView() {
//        containerView.addSubview(imageView)
//
//        NSLayoutConstraint.activate([
//            imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
//            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
//            imageView.widthAnchor.constraint(equalToConstant: 20),
//            imageView.heightAnchor.constraint(equalToConstant: 20),
//        ])
//    }
//
//    private func configureTextField() {
//        containerView.addSubview(textField)
//
//        NSLayoutConstraint.activate([
//            textField.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
//            textField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20),
//            textField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -30),
//
//        ])
//    }
//
//}
