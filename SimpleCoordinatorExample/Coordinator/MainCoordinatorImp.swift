//
//  MainCoordinatorImp.swift
//  SimpleCoordinatorExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 08/03/21.
//

import Foundation

class MainCoordinatorImp: BaseCoordinator, CoordinatorOutput {
    private var router: Router
    private var factory: ModuleFactory
    var finishFlow: (()-> Void)?
    
    init(router: Router, factory: ModuleFactory) {
        self.router = router
        self.factory = factory
    }
    
    override func start() {
        showMainView()
    }
    
    private func showMainView() {
        var mainViewController = factory.makeMainInterface()
        mainViewController.onButtonClick = { [weak self] in
            self?.showAdvancedOptions()
        }
        router.setRootModule(presentable: mainViewController)
    }
    
    private func showAdvancedOptions() {
        let advancedOptionsViewController = factory.makeAdvancedOptionsInterface()
        router.setRootModule(presentable: advancedOptionsViewController)
    }
}
