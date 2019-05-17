//
//  TabBarController.swift
//  LearningControllers
//
//  Created by tilekbek kadyrov on 5/14/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBar()
    }
    
    private func setupTabBar() {
        tabBar.tintColor = #colorLiteral(red: 0.2549019608, green: 0.6117647059, blue: 1, alpha: 1)
        tabBar.isTranslucent = false
        
        let firstController = UINavigationController(rootViewController: FirstViewController())
        firstController.tabBarItem = UITabBarItem(title: "reload", image: #imageLiteral(resourceName: "send@2x.png"), selectedImage: #imageLiteral(resourceName: "sendColor@2x.png"))

        
        let secondController = UINavigationController(rootViewController: SecondViewController())
        secondController.tabBarItem = UITabBarItem(title: "history", image: #imageLiteral(resourceName: "history@2x.png"), selectedImage: #imageLiteral(resourceName: "historyColor@2x.png"))

        
        let thirdController = UINavigationController(rootViewController: ThirdViewController())
        thirdController.tabBarItem = UITabBarItem(title: "profile", image: #imageLiteral(resourceName: "profile@2x.png"), selectedImage: #imageLiteral(resourceName: "profileColor@2x.png"))
        
        viewControllers = [firstController, secondController, thirdController]
        
    }

}
