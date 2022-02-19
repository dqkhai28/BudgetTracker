//
//  ViewController.swift
//  Budget-Tracker
//
//  Created by KaiD on 25/12/2021.
//

import UIKit

class BTrackerTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Home
        let homeViewController: BTrackerHomeViewController = BTrackerHomeViewController(nibName: BTrackerHomeViewController.className, bundle: nil)
        let homeIconUnselected = UIImage(named: "homekit")?.withRenderingMode(.alwaysOriginal)
        let homeIconSelected = UIImage(named: "homekit")?.withRenderingMode(.alwaysOriginal)
        homeViewController.tabBarItem = UITabBarItem(title: "Home",
                                                     image: homeIconUnselected,
                                                     selectedImage: homeIconSelected)
        let homeNavi = UINavigationController(rootViewController: homeViewController)

        // Account list
        let accountListViewController: BTrackerAccountListViewController = BTrackerAccountListViewController(nibName: BTrackerAccountListViewController.className, bundle: nil)
        let accountIconUnselected = UIImage(named: "person")?.withRenderingMode(.alwaysOriginal)
        let accountIconSelected = UIImage(named: "person.fill")?.withRenderingMode(.alwaysOriginal)
        accountListViewController.tabBarItem = UITabBarItem(title: "Account",
                                                          image: accountIconUnselected,
                                                          selectedImage: accountIconSelected)
        let accountNavi = UINavigationController(rootViewController: accountListViewController)
        
        tabBar.backgroundColor = ColorDefine.lightGray
//        tabBar.addShadow(offset: CGSize(width: 0, height: -1), color: .black, radius: 1, opacity: 0.3)
        viewControllers = [homeNavi, accountNavi]
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        tabBar.barTintColor = ColorDefine.colorFFFFFF
    }
}

