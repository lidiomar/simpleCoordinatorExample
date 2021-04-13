//
//  CoordinatorFactory.swift
//  SimpleCoordinatorExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 08/03/21.
//

import Foundation

protocol CoordinatorFactory {
    func makeMainCoordinator(router: Router) -> Coordinator & CoordinatorOutput
}
