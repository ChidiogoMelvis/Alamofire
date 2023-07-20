//
//  AppCordinator.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit

class AppCoordinator: CoordinatorDelegate {
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
            self.navigationController = navigationController
        }
    
    func start() {
        let vc = TabBarViewController.init()
        navigationController?.pushViewController(vc, animated: false)
    }
    
}
