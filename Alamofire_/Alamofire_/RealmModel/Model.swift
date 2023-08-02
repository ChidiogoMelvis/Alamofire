//
//  Model.swift
//  Alamofire_
//
//  Created by Mac on 02/08/2023.
//

import Foundation
import RealmSwift

class Song: Object{
    @objc dynamic var title: String = ""
    @objc dynamic var artist: String = ""
}
