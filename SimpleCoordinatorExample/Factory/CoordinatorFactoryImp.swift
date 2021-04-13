//
//  CoordinatorFactoryImp.swift
//  SimpleCoordinatorExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 08/03/21.
//

import Foundation

class CoordinatorFactoryImp: CoordinatorFactory {
    
    func makeMainCoordinator(router: Router) -> Coordinator & CoordinatorOutput {
        return MainCoordinatorImp(router: router, factory: ModuleFactoryImp())
    }
}
