//
//  GreenViewController.swift
//  TestNavigationBarChevronTint
//
//  Created by Bart van Kuik on 01/05/2017.
//  Copyright © 2017 DutchVirtual. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    private var barButtonItem: UIBarButtonItem!

    func barButtonItemAction() {
        let blueViewController = BlueViewController()
        let navigationController = UINavigationController(rootViewController: blueViewController)
        navigationController.modalPresentationStyle = .popover
        navigationController.popoverPresentationController?.barButtonItem = self.barButtonItem
        self.present(navigationController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.barButtonItem = UIBarButtonItem(title: "Show blue popover", style: .plain, target: self, action: #selector(barButtonItemAction))
        self.navigationItem.rightBarButtonItem = barButtonItem
    }

}
