//
//  GameRules.swift
//  Millionaire
//
//  Created by Сергей Золотухин on 05.02.2023.
//

import UIKit

class GameRulesController: UIViewController {
        
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "backgroundImage")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var backToMainMenuButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("go next", for: .normal)
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        button.backgroundColor = .questionButtonBackground
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var startBrain = StartBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    @objc
    private func didTapButton() {
        dismiss(animated: false)
    }
}

private extension GameRulesController {
    func setupViewController() {
        addSubviews()
        setConstraints()
    }
    
    func addSubviews() {
        view.addSubview(backgroundImageView)
        view.addSubview(backToMainMenuButton)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            backToMainMenuButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            backToMainMenuButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            backToMainMenuButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            backToMainMenuButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

