//
//  StartViewController.swift
//  Millionaire
//
//  Created by Сергей Золотухин on 05.02.2023.
//

import UIKit

class StartViewController: UIViewController {
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "backgroundImage")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "millionaireImage")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 36)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = """
        Welcome
        to Who wanna
        to be a Millionaire
        """
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var gameRuleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("ПРАВИЛА ИГРЫ", for: .normal)
        button.addTarget(self, action: #selector(didTapRulesButton), for: .touchUpInside)
        button.setTitleColor(.startLabelsColor, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var startGameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("СТАРТ ИГРЫ", for: .normal)
        button.addTarget(self, action: #selector(didTapStartButton), for: .touchUpInside)
        button.setTitleColor(.startLabelsColor, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 32)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var startBrain = StartBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    @objc
    private func didTapRulesButton() {
        let viewController = GameRulesController()
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: false)
    }
    
    @objc
    private func didTapStartButton() {
        let viewController = ResultsViewController()
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: false)
    }
}

private extension StartViewController {
    func setupViewController() {
        addSubviews()
        setConstraints()
    }
    
    func addSubviews() {
        view.addSubview(backgroundImageView)
        view.addSubview(logoImageView)
        view.addSubview(titleLabel)
        view.addSubview(gameRuleButton)
        view.addSubview(startGameButton)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 225),
            logoImageView.widthAnchor.constraint(equalToConstant: 225),
            
            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            gameRuleButton.bottomAnchor.constraint(equalTo: startGameButton.topAnchor, constant: -30),
            gameRuleButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            gameRuleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            gameRuleButton.heightAnchor.constraint(equalToConstant: 50),
            
            startGameButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            startGameButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            startGameButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            startGameButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
