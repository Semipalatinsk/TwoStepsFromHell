//
//  TabBarController.swift
//  TwoStepsFromHell
//
//  Created by dmhs on 2017/6/19.
//  Copyright © 2017 NQU. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        self.delegate = self
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        UIApplication.shared.statusBarStyle = .lightContent
    }
}
