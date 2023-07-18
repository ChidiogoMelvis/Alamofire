//
//  SearchTableView.swift
//  Alamofire_
//
//  Created by Mac on 14/07/2023.
//

import Foundation
import UIKit

protocol SearchTableViewCellDelegate {
    func didSelectRow(_vc: UIViewController)
}

protocol AlbumViewButtonsDelegate{
    func presentView(at index: IndexPath)
}

