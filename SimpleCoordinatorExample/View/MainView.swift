//
//  MainView.swift
//  SimpleCoordinatorExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 13/03/21.
//

import Foundation

protocol MainView: Presentable {
    var onButtonClick: (() -> Void)? { get set }
}
