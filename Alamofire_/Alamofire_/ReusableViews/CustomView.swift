//
//  CustomView.swift
//  Alamofire_
//
//  Created by Mac on 21/07/2023.
//

import UIKit

class CustomView: UIView {
    
    //      override init(frame: CGRect) {
    //          super.init(frame: frame)
    //      }
    //
    
    init(view: UIImage?, color: UIColor) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = color
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
    }
    
}
