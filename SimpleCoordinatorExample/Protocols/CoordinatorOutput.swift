//
//  CoordinatorOutput.swift
//  SimpleCoordinatorExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 14/03/21.
//

import Foundation

protocol CoordinatorOutput {
    var finishFlow: (()-> Void)? { get set }
}
