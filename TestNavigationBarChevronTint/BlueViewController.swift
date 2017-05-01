//
//  BlueViewController.swift
//  TestNavigationBarChevronTint
//
//  Created by Bart van Kuik on 01/05/2017.
//  Copyright © 2017 DutchVirtual. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(colorLiteralRed: 0.686, green: 0.961, blue: 0.996, alpha: 1)

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Notice how all elements outside the popover are greyed except the back chevron in the top navigation bar!"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0

        self.view.addSubview(label)

        label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1, constant: -10).isActive = true
    }

}
