//
//  ViewController.swift
//  LearningControllers
//
//  Created by tilekbek kadyrov on 5/3/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let button : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Recharge", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.appRegularFontWith(size: 25)
        
        button.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.layer.borderWidth = 1
        
        button.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
        
        button.layer.cornerRadius = 8
        
        button.addTarget(self, action: #selector(handleCountry), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupNavController()
        setupButton()
    }
    
    @objc private func handleCountry() {
        navigationController?.pushViewController(SelectCountryViewController(), animated: true)
    }
    
    private func setupButton() {
        view.addSubview(button)
        
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
    }
    
    private func setupNavController() {
        self.navigationItem.title = "Recharge Balance"
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font : UIFont.appRegularFontWith(size: 35)]
    }

}



