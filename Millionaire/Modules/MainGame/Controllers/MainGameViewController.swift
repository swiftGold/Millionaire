//
//  MainGameViewController.swift
//  Millionaire
//
//  Created by Сергей Золотухин on 05.02.2023.
//

import UIKit

class MainGameViewController: UIViewController {
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "backgroundImage")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var nextModuleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("go back", for: .normal)
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        button.backgroundColor = .questionButtonBackground
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    @objc
    private func didTapButton() {
        let viewController = StartViewController()
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: false)
    }
}

private extension MainGameViewController {
    func setupViewController() {
        addSubviews()
        setConstraints()
    }
    
    func addSubviews() {
        view.addSubview(backgroundImageView)
        view.addSubview(nextModuleButton)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            nextModuleButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            nextModuleButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nextModuleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nextModuleButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
