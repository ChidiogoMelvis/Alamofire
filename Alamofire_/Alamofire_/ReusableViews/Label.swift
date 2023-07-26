//
//  Label.swift
//  Alamofire_
//
//  Created by Mac on 12/07/2023.
//

import UIKit

class Label: UILabel {

    init(label: String, textColor: UIColor) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.numberOfLines = 0
        self.text = label
        self.textColor = textColor
        self.font = UIFont.systemFont(ofSize: 14, weight: .regular)
}

required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}
}
