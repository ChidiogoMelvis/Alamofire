//
//  Editors.swift
//  Alamofire_
//
//  Created by Mac on 24/07/2023.
//

import UIKit

class Editors: UICollectionReusableView {
    
    let identifier = " Editors"
  
  let label = Label(label: "", textColor: .white)
  
  public func configure() {
      addSubview(label)
      
  }
  override func layoutSubviews() {
      super.layoutSubviews()
      setupHeaders()
  }
  
  func setupHeaders() {
      NSLayoutConstraint.activate([
          label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
          label.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
      ])
  }
        
}
