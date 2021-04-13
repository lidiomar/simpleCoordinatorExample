//
//  ApplicationCoordinatorTest.swift
//  SimpleCoordinatorExampleTests
//
//  Created by Lidiomar Fernando dos Santos Machado on 07/03/21.
//

import Foundation
import XCTest
@testable import SimpleCoordinatorExample

class ApplicationCoordinatorTest: XCTestCase {
    
    func test_start_WithMainViewController() {
        let routerSpy = RouterSpy()
        let coordinatorFactorySpy = CoordinatorFactorySpy()
        let applicationCoordinator = ApplicationCoordinator(router: routerSpy, factory: coordinatorFactorySpy)
        
        applicationCoordinator.start(flow: .main)
        let childCoordinator = applicationCoordinator.childCoordinators.first
        
        
    }
    
    class RouterSpy: Router {
        var module: Module? = nil
        
        func setModule(_ module: Module) {
            self.module = module
        }
    }
    
    class CoordinatorFactorySpy: CoordinatorFactory {
        
        func makeMainCoordinator() -> Coordinator & MainCoordinator {
            return MainCoordinatorImp()
        }
    }
}
