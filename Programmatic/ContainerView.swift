//
//  ContainerView.swift
//  Programmatic
//
//  Created by Onurcan Sever on 2022-02-25.
//

import UIKit

class ContainerView: UIView {
    
    private var iconLabel: String?
    private var textFieldPlaceholder: String?
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: iconLabel!)?.withRenderingMode(.alwaysOriginal)
        imageView.clipsToBounds = false
        
        return imageView
    }()
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = textFieldPlaceholder
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        textField.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        textField.adjustsFontSizeToFitWidth = true
        
        return textField
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    init(viewController: UIViewController, icon: String, placeholder: String) {
        super.init(frame: .zero)
        self.iconLabel = icon
        self.textFieldPlaceholder = placeholder
        viewController.view.addSubview(self)
        configure()
        
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.topAnchor),
            self.leadingAnchor.constraint(equalTo: viewController.view.leadingAnchor, constant: 50),
            self.trailingAnchor.constraint(equalTo: viewController.view.trailingAnchor, constant: -50),
            self.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        configureImageView()
        configureTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor.white
        self.layer.cornerRadius = 20
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
    }
    
    private func configureImageView() {
        self.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imageView.widthAnchor.constraint(equalToConstant: 20),
            imageView.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
    
    private func configureTextField() {
        self.addSubview(textField)
        
        NSLayoutConstraint.activate([
            textField.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            textField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            
        ])
    }
    
    public func getTextField() -> UITextField {
        return self.textField
    }

}
