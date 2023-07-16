//
//  Protocol.swift
//  Alamofire_
//
//  Created by Mac on 16/07/2023.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }

    func start()
}
