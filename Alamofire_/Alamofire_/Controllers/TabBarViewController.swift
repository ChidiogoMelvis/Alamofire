//
//  TabBarViewController.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit

class TabBar: UITabBarController {
    
    let controllers = UITabBarController()
    let firstVC = UINavigationController(rootViewController: HomePageViewController())
    let secondVC = UINavigationController(rootViewController: SearchPageViewController())
    let thirdVC = UINavigationController(rootViewController: LibraryPageViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        view.backgroundColor = .white
    }
    func setupViewControllers() {
        let vcIcons = [
            UIImage(named: "Homefilled"),
            UIImage(named: "Search"),
            UIImage(named: "Librarysmall")
        ]
        firstVC.title = "Home"
        secondVC.title = "Search"
        thirdVC.title = "Your Library"
        
        setViewControllers([firstVC, secondVC, thirdVC], animated: true)
        tabBar.tintColor = UIColor(named: "tabbarTintColor")
        tabBar.backgroundColor = .white
        tabBar.unselectedItemTintColor = UIColor(named: "unselectedTabbarColor")
        
        guard let icons = self.tabBar.items else { return }
        for icon in 0...2 {
            icons[icon].image = vcIcons[(icon)]
        }
    }
}
