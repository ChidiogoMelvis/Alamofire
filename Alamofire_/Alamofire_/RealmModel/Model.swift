//
//  Model.swift
//  Alamofire_
//
//  Created by Mac on 02/08/2023.
//

import Foundation
import RealmSwift

class Song: Object{
    @Persisted var title: String
    @Persisted var duration: Int
    @Persisted var id: String
    
    convenience init(datum: Datum) {
        self.init()
        self.title = datum.name
        self.duration = datum.duration
        self.id = datum.id
    }
}
