//
//  ApplicationCoordinator.swift
//  SimpleCoordinatorExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 07/03/21.
//

import Foundation

class ApplicationCoordinator: BaseCoordinator {
    private var router: Router
    private var factory: CoordinatorFactory
    
    init(router: Router, factory: CoordinatorFactory) {
        self.router = router
        self.factory = factory
    }
    
    override func start() {
        runMainFlow()
    }
    
    private func runMainFlow() {
        var coordinator = factory.makeMainCoordinator(router: router)
        coordinator.finishFlow = { [weak self, weak coordinator] in
            self?.removeDependency(coordinator)
        }
        addDependency(coordinator)
        coordinator.start()
        
    }
}
