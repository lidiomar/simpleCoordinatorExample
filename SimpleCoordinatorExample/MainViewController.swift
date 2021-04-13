//
//  MainViewController.swift
//  SimpleCoordinatorExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 08/03/21.
//

import UIKit

class MainViewController: UIViewController, MainView {
    
    var onButtonClick: (() -> Void)?
    
    private let advancedOptionsButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Advanced Options", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action:  #selector(advancedOptionsButtonClick), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureConstraints()
    }
    
    private func configureView() {
        self.view.backgroundColor = .orange
        self.view.addSubview(advancedOptionsButton)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            advancedOptionsButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            advancedOptionsButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            advancedOptionsButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func advancedOptionsButtonClick() {
        self.onButtonClick?()
    }
}
