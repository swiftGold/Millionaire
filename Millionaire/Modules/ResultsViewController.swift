//
//  ResultsViewController.swift
//  Millionaire
//
//  Created by Vania Aryutov on 05.02.2023.
//

import UIKit
import AVFoundation

class ResultsViewController: UIViewController {
    enum Constants {
        static let logoImageTopSpacing: CGFloat = 10.0
        static let logoImageSize: CGFloat = 81.5
        static let logoImageName: String = "millionaireImage"
        static let backgroundImageName: String = "backgroundImage"
        static let progressViewTopSpacing: CGFloat = 60.0
        static let progressViewBottomSpacing: CGFloat = 80.0
        static let progressViewSideSpacing: CGFloat = 42.0
        static let nextQuestionText: String = "Нажмите, чтобы продолжить..."
        static let nextQuestionFont: UIFont = UIFont.systemFont(ofSize: 16, weight: .regular)
        static let nextQuestionTitleBottomSpacing: CGFloat = 40.0
    }
    
    //MARK: - Create UI
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: Constants.logoImageName)
        return imageView
    }()
    
    private lazy var backgroundImageView: UIImageView = {
        let backgroundView = UIImageView()
        backgroundView.image = UIImage(named: Constants.backgroundImageName)
        backgroundView.contentMode = .scaleAspectFill
        return backgroundView
    }()
    
    private lazy var nextQuestionLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.nextQuestionText
        label.font = Constants.nextQuestionFont
        label.textColor = .white
        return label
    }()
    
    var player = AVAudioPlayer()
    
    let progressView = ProgressView()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
    private func addTaps() {
            let tapScreen = UITapGestureRecognizer(target: self, action: #selector(viewTaps))
            tapScreen.cancelsTouchesInView = false
            view.addGestureRecognizer(tapScreen)
        }
        
        @objc private func viewTaps() {
            print("next view")
        }
    

    private func setupViews() {
        view.addSubview(backgroundImageView)
        view.addSubview(progressView)
        view.addSubview(logoImageView)
        view.addSubview(nextQuestionLabel)
        
        addTaps()
        backgroundImageView.frame = view.frame
    }
    
    private func setConstraints() {
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoImageView.heightAnchor.constraint(equalToConstant: Constants.logoImageSize),
            logoImageView.widthAnchor.constraint(equalToConstant: Constants.logoImageSize),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Constants.logoImageTopSpacing),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        progressView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: logoImageView.topAnchor, constant: Constants.progressViewTopSpacing),
            progressView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -Constants.progressViewBottomSpacing),
            progressView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.progressViewSideSpacing),
            progressView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.progressViewSideSpacing)
        ])
        
        nextQuestionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nextQuestionLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -Constants.nextQuestionTitleBottomSpacing),
            nextQuestionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
