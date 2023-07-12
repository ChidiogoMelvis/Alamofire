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
        return temporalData.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return temporalSections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        guard indexPath.section < temporalData.count else {
                return cell
            }
            let section = temporalData[indexPath.section]
            
            guard indexPath.row < section.count else {
                return cell
            }
            let rowData = section[indexPath.row]
            cell.textLabel?.text = "\(rowData)"
            
        cell.backgroundColor = .gray
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return temporalSections[section]
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 134
    }
    
}
