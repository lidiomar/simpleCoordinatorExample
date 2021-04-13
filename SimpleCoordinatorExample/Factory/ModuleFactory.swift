//
//  ModuleFactory.swift
//  SimpleCoordinatorExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 08/03/21.
//

import Foundation

protocol ModuleFactory {
    func makeMainInterface() -> MainView
    
    func makeAdvancedOptionsInterface() -> AdvancedOptionsView
}
