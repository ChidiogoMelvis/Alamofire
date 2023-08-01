//
//  Button.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit


class Button: UIButton {
    
    init(image: UIImage?,label: String, btnColor: UIColor) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setImage(image, for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
