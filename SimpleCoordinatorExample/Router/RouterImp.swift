//
//  RouterImp.swift
//  SimpleCoordinatorExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 07/03/21.
//

import Foundation
import UIKit

class RouterImp: Router {
    private var navigationViewController: UINavigationController
    
    init(navigationViewController: UINavigationController) {
        self.navigationViewController = navigationViewController
    }
    
    func setRootModule(presentable: Presentable) {
        guard let viewController = presentable.toPresent() else { return }
        navigationViewController.pushViewController(viewController, animated: true)
    }
}
