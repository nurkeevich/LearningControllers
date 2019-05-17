//
//  SelectCountryViewController.swift
//  LearningControllers
//
//  Created by tilekbek kadyrov on 5/15/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import UIKit
import CountryList

class SelectCountryViewController: UIViewController {
    
    let label : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Please enter top up details"
//        label.font = UIFont.appRegularFontWith(size: 18)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return label
    }()
    
    var countryList = CountryList()
    
    let button : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Select Country", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        
//        button.titleLabel?.font = UIFont.appRegularFontWith(size: 18)
        
        button.layer.borderWidth = 0.8
        button.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.cornerRadius = 8
        
        button.addTarget(self, action: #selector(handelCountryList), for: .touchUpInside)
        
        return button
    }()
    
    let codeLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "+"
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        label.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.layer.borderWidth = 0.8
        label.layer.cornerRadius = 8
        
        return label
    }()
    
    let phoneNumberField: TextField = {
        let field = TextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        field.keyboardType = .numberPad
        field.layer.borderWidth = 0.8
        field.layer.cornerRadius = 8
        return field
    }()
    
    let selectOperatorButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Select Operator", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        
//        button.titleLabel?.font = UIFont.appRegularFontWith(size: 18)
        
        button.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.borderWidth = 0.8
        button.layer.cornerRadius = 8
        
        return button
    }()
    
    let selectAmount : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Select amount", for: .normal)
//        button.titleLabel?.font = UIFont.appRegularFontWith(size: 18)
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        
        button.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.borderWidth = 0.8
        button.layer.cornerRadius = 8
        
        return button
    }()
    
    let paymentOption : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Payment options", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        
        button.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.borderWidth = 0.8
        button.layer.cornerRadius = 8
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        countryList.delegate = self
        setupElements()
    }
    
    private func setupElements() {
        setupNavController()
        setupButton()
        setupLabel()
        setupCodeLabel()
        setupPhoneNumberField()
        setupSelectOperatorButton()
        setupSelectAmount()
        setupPaymentOption()
    }
    
    private func setupPaymentOption() {
        view.addSubview(paymentOption)
        
        paymentOption.topAnchor.constraint(equalTo: selectAmount.bottomAnchor, constant: 15).isActive = true
        paymentOption.leadingAnchor.constraint(equalTo: selectAmount.leadingAnchor).isActive = true
        paymentOption.trailingAnchor.constraint(equalTo: selectAmount.trailingAnchor).isActive = true
        paymentOption.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func setupSelectAmount() {
        view.addSubview(selectAmount)
        
        selectAmount.topAnchor.constraint(equalTo: selectOperatorButton.bottomAnchor, constant: 15).isActive = true
        selectAmount.leadingAnchor.constraint(equalTo: selectOperatorButton.leadingAnchor).isActive = true
        selectAmount.trailingAnchor.constraint(equalTo: selectOperatorButton.trailingAnchor).isActive = true
        selectAmount.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func setupSelectOperatorButton() {
        view.addSubview(selectOperatorButton)
        
        selectOperatorButton.topAnchor.constraint(equalTo: codeLabel.bottomAnchor, constant: 15).isActive = true
        selectOperatorButton.leadingAnchor.constraint(equalTo: button.leadingAnchor).isActive = true
        selectOperatorButton.trailingAnchor.constraint(equalTo: button.trailingAnchor).isActive = true
        selectOperatorButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func setupPhoneNumberField() {
        view.addSubview(phoneNumberField)
        
        phoneNumberField.leadingAnchor.constraint(equalTo: codeLabel.trailingAnchor, constant: 5).isActive = true
        phoneNumberField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        phoneNumberField.trailingAnchor.constraint(equalTo: button.trailingAnchor).isActive = true
        phoneNumberField.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 15).isActive = true
    }
    
    private func setupCodeLabel() {
        view.addSubview(codeLabel)
        
        codeLabel.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 15).isActive = true
        codeLabel.leadingAnchor.constraint(equalTo: button.leadingAnchor).isActive = true
        codeLabel.widthAnchor.constraint(equalToConstant: 75).isActive = true
        codeLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func setupLabel() {
        view.addSubview(label)
        
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    private func setupButton() {
        view.addSubview(button)
        
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150).isActive = true
        button.widthAnchor.constraint(equalToConstant: view.frame.width/1.2).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc private func handelCountryList() {
        print("handle Country")
        let navController = UINavigationController(rootViewController: countryList)
        self.present(navController, animated: true, completion: nil)
    }
    
    private func setupNavController() {
        self.navigationItem.title = "Reload"
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font : UIFont.appRegularFontWith(size: 35)]
    }

}

extension SelectCountryViewController : CountryListDelegate {
    func selectedCountry(country: Country) {
        button.setTitle("\(country.flag ?? "flag") \(country.name ?? "name")", for: .normal)
        codeLabel.text = "+\(country.phoneExtension)"
    }
    
    
}

class TextField: UITextField {
    
    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
