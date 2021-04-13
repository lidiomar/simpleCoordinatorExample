//
//  BaseCoordinator.swift
//  SimpleCoordinatorExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 08/03/21.
//

import Foundation

class BaseCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    func start() {}
    
    func addDependency(_ coordinator: Coordinator) {
      guard !childCoordinators.contains(where: { $0 === coordinator }) else { return }
      childCoordinators.append(coordinator)
    }
    
    func removeDependency(_ coordinator: Coordinator?) {
      guard
        childCoordinators.isEmpty == false,
        let coordinator = coordinator
        else { return }
      
      // Clear child-coordinators recursively
      if let coordinator = coordinator as? BaseCoordinator, !coordinator.childCoordinators.isEmpty {
          coordinator.childCoordinators
              .filter({ $0 !== coordinator })
              .forEach({ coordinator.removeDependency($0) })
      }
      for (index, element) in childCoordinators.enumerated() where element === coordinator {
          childCoordinators.remove(at: index)
          break
      }
    }
}
