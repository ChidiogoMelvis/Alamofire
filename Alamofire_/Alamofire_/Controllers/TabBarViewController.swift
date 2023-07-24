//
//  TabBarViewController.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate  {
    
    var selectionIndicatorView: UIView!
    
    let controllers = UITabBarController()
    let firstVC = UINavigationController(rootViewController: HomePageViewController())
    let secondVC = UINavigationController(rootViewController: SearchPageViewController())
    let thirdVC = UINavigationController(rootViewController: LibraryPageViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        view.backgroundColor = .black//UIColor(named: "tabbarBackgroundColor")
        delegate = self
        createSelectionIndicator()
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
        tabBar.backgroundColor = UIColor(named: "tabbarBackgroundColor")
        tabBar.unselectedItemTintColor = UIColor(named: "unselectedTabbarColor")
        
        guard let icons = self.tabBar.items else { return }
        for icon in 0...2 {
            icons[icon].image = vcIcons[(icon)]
        }
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
            guard let items = tabBar.items else { return }
            
            if let selectedIndex = items.firstIndex(of: item) {
                let tabBarWidth = tabBar.bounds.width
                let indicatorWidth = tabBarWidth / CGFloat(items.count)
                let indicatorX = indicatorWidth * CGFloat(selectedIndex)
                
                UIView.animate(withDuration: 0.2) {
                    self.selectionIndicatorView.frame.origin.x = indicatorX
                    self.selectionIndicatorView.frame.size.width = indicatorWidth
                }
            }
        }
    
    func createSelectionIndicator() {
            let indicatorHeight: CGFloat = 2
            selectionIndicatorView = UIView(frame: CGRect(x: 0, y: tabBar.bounds.height - indicatorHeight, width: tabBar.bounds.width / CGFloat(tabBar.items?.count ?? 1), height: indicatorHeight))
            selectionIndicatorView.backgroundColor = UIColor.white
            tabBar.addSubview(selectionIndicatorView)
        }
}
