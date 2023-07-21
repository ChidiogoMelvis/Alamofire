//
//  Protocol.swift
//  Alamofire_
//
//  Created by Mac on 16/07/2023.
//

import UIKit

protocol CoordinatorDelegate: AnyObject {
    var navigationController: UINavigationController? { get set }
    
    func start()
}

protocol Coordinating {
    var coordinator: CoordinatorDelegate { get set}
}
