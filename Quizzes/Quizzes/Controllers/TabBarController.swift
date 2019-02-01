//
//  TabBarController.swift
//  Quizzes
//
//  Created by Nathalie  on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstViewController = QuizzesViewController()
        firstViewController.tabBarItem = UITabBarItem(title: "Quizzes", image: UIImage(named: "quiz-icon"), tag: 0)
        
        let secondViewController = SearchViewController()
        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        
        let thirdViewController = CreateViewController()
        thirdViewController.tabBarItem = UITabBarItem(title: "Create", image: UIImage(named: "create-icon"), tag: 2)
        
        let fourthViewController = ProfileViewController()
        fourthViewController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "profile-unfilled"), tag: 3)
        
        let tabBarList = [firstViewController, secondViewController, thirdViewController, fourthViewController]
        viewControllers = tabBarList
    }
    

    

}
