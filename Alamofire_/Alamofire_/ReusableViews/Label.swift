//
//  Label.swift
//  Alamofire_
//
//  Created by Mac on 12/07/2023.
//

import UIKit

class Label: UILabel {

    init(label: String) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = label
        self.textColor = .white
        self.font = UIFont.systemFont(ofSize: 25, weight: .bold)
}

required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}
}
