//
//  LooseViewController.swift
//  Millionaire
//
//  Created by Димаш Алтынбек on 08.02.2023.
//

import Foundation
import UIKit

class LooseViewController: UIViewController {
    
    //MARK: -Creating Views-
    
    let imageBackground: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "backgroundImage")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "millionaireImage")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let atemptLabel: UILabel = {
        let label = UILabel()
        label.text = "You losed on {attempt} attempt"
        label.font = .boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    let loseLabel: UILabel = {
        let label = UILabel()
        label.text = "LOSE"
        label.font = .boldSystemFont(ofSize: 50)
        label.textColor = .loseTitleColor
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play Again", for: .normal)
        button.backgroundColor = .playAgainButtonBackground
        button.titleLabel?.font = .boldSystemFont(ofSize: 35)
        button.titleLabel?.textColor = .white
        button.addTarget(self, action: #selector(didResetTap), for: .touchUpInside)
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: -Life cycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    //MARK: -Set Up Views-
    private func setUpViews() {
        view.addSubview(imageBackground)
        NSLayoutConstraint.activate([
            imageBackground.topAnchor.constraint(equalTo: view.topAnchor),
            imageBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imageBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        view.addSubview(logoImageView)
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 225),
            logoImageView.heightAnchor.constraint(equalToConstant: 225)
        ])
        view.addSubview(atemptLabel)
        NSLayoutConstraint.activate([
            atemptLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 5),
            atemptLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        view.addSubview(loseLabel)
        NSLayoutConstraint.activate([
            loseLabel.topAnchor.constraint(equalTo: atemptLabel.bottomAnchor, constant: 10),
            loseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            loseLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        view.addSubview(resetButton)
        NSLayoutConstraint.activate([
            resetButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            resetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            resetButton.heightAnchor.constraint(equalToConstant: 100),
            resetButton.widthAnchor.constraint(equalToConstant: view.frame.width - 100)
        ])
    }
    
    @objc func didResetTap() {
        
    }
}
