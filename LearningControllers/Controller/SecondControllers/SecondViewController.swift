//
//  SecondViewController.swift
//  LearningControllers
//
//  Created by tilekbek kadyrov on 5/14/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let label : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Second Page Label"
        label.font = UIFont.appRegularFontWith(size: 18)
        label.textAlignment = .center
        label.layer.borderWidth = 1
        label.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        label.layer.cornerRadius = 8
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupNavController()
        setupLabel()
    }
    
    private func setupNavController() {
        self.navigationItem.title = "History"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font : UIFont.appRegularFontWith(size: 35)]
    }
    
    private func setupLabel() {
        view.addSubview(label)

        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: view.frame.width/1.2).isActive = true
    }
    
}
