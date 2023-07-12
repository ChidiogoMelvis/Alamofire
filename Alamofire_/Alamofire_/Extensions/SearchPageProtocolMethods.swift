//
//  SearchPageProtocolMethods.swift
//  Alamofire_
//
//  Created by Mac on 12/07/2023.
//

import Foundation
import UIKit

extension SearchPageViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 5
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        cell.backgroundColor = .gray
        return cell
    }
    
}
