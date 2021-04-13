//
//  ModuleFactoryImp.swift
//  SimpleCoordinatorExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 08/03/21.
//

import Foundation

class ModuleFactoryImp: ModuleFactory {
    func makeMainInterface() -> MainView {
        return MainViewController()
    }
    
    func makeAdvancedOptionsInterface() -> AdvancedOptionsView {
        return AdvancedOptionsViewController()
    }
}
