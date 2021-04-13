//
//  Presentable.swift
//  SimpleCoordinatorExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 13/03/21.
//

import Foundation
import UIKit

protocol Presentable {
  func toPresent() -> UIViewController?
}

extension UIViewController: Presentable {
    func toPresent() -> UIViewController? {
        return self
    }
}
