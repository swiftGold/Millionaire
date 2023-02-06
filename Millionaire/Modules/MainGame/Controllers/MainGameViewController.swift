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
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "millionaireImage")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let questionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Here will be your question"
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private let questionNumberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "question 5"
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    private let questionCostLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1000 RUB"
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    private let topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var answerAButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 25
        button.clipsToBounds = true
        button.backgroundColor = UIColor.answerButtonBackground
        button.addTarget(self, action: #selector(didTapAnswerButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "a.circle"), for: .normal)
        button.tintColor = .white
        button.setTitle("answer A", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.imageEdgeInsets = UIEdgeInsets(top: 0,
                                              left: -170,
                                              bottom: 0,
                                              right: 0)
        button.titleEdgeInsets = UIEdgeInsets(top: 0,
                                              left: 100,
                                              bottom: 0,
                                              right: 0)
        return button
    }()
    
    private lazy var answerBButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 25
        button.clipsToBounds = true
        button.backgroundColor = UIColor.answerButtonBackground
        button.addTarget(self, action: #selector(didTapAnswerButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "b.circle"), for: .normal)
        button.tintColor = .white
        button.setTitle("answer B", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.imageEdgeInsets = UIEdgeInsets(top: 0,
                                              left: -170,
                                              bottom: 0,
                                              right: 0)
        button.titleEdgeInsets = UIEdgeInsets(top: 0,
                                              left: 100,
                                              bottom: 0,
                                              right: 0)
        return button
    }()
    
    private lazy var answerCButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 25
        button.clipsToBounds = true
        button.backgroundColor = UIColor.answerButtonBackground
        button.addTarget(self, action: #selector(didTapAnswerButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "c.circle"), for: .normal)
        button.tintColor = .white
        button.setTitle("answer C", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.imageEdgeInsets = UIEdgeInsets(top: 0,
                                              left: -170,
                                              bottom: 0,
                                              right: 0)
        button.titleEdgeInsets = UIEdgeInsets(top: 0,
                                              left: 100,
                                              bottom: 0,
                                              right: 0)
        return button
    }()
    
    private lazy var answerDButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 25
        button.clipsToBounds = true
        button.backgroundColor = UIColor.answerButtonBackground
        button.addTarget(self, action: #selector(didTapAnswerButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "d.circle"), for: .normal)
        button.tintColor = .white
        button.setTitle("answer D", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.imageEdgeInsets = UIEdgeInsets(top: 0,
                                              left: -170,
                                              bottom: 0,
                                              right: 0)
        button.titleEdgeInsets = UIEdgeInsets(top: 0,
                                              left: 100,
                                              bottom: 0,
                                              right: 0)
        return button
    }()
    
    private let bottomView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var promptFiftyFiftyButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "fiftyFifty"), for: .normal)
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(didTapPromptButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var promptHallHelpButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "hallHelp"), for: .normal)
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(didTapPromptButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var promptCallToFriendButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "callToFriend"), for: .normal)
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(didTapPromptButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let topStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 10
        stackView.distribution = .fillProportionally
        stackView.alignment = .top
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let numberCostStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let answersBlockStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 35
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let promptStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 1
        stackView.distribution = .fillProportionally
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    @objc
    private func didTapAnswerButton() {
        print(#function)
    }
    
    @objc
    private func didTapPromptButton() {
        print(#function)
    }
}

private extension MainGameViewController {
    func setupViewController() {
        addSubviews()
        setConstraints()
    }
    
    func addSubviews() {
        view.addSubview(backgroundImageView)
        
        topStackView.addArrangedSubview(logoImageView)
        topStackView.addArrangedSubview(questionLabel)
        
        numberCostStackView.addArrangedSubview(questionNumberLabel)
        numberCostStackView.addArrangedSubview(questionCostLabel)
        
        
        answersBlockStackView.addArrangedSubview(answerAButton)
        answersBlockStackView.addArrangedSubview(answerBButton)
        answersBlockStackView.addArrangedSubview(answerCButton)
        answersBlockStackView.addArrangedSubview(answerDButton)
        
        promptStackView.addArrangedSubview(promptFiftyFiftyButton)
        promptStackView.addArrangedSubview(promptHallHelpButton)
        promptStackView.addArrangedSubview(promptCallToFriendButton)
        
        mainStackView.addArrangedSubview(topStackView)
        mainStackView.addArrangedSubview(numberCostStackView)
        mainStackView.addArrangedSubview(topView)
        mainStackView.addArrangedSubview(answersBlockStackView)
        mainStackView.addArrangedSubview(bottomView)
        mainStackView.addArrangedSubview(promptStackView)
        
        view.addSubview(mainStackView)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            logoImageView.widthAnchor.constraint(equalToConstant: 87),
            logoImageView.heightAnchor.constraint(equalToConstant: 87),
            
            topStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            topStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            topStackView.heightAnchor.constraint(equalToConstant: 120),
            
            numberCostStackView.heightAnchor.constraint(equalToConstant: 30),
            
            answersBlockStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            answersBlockStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            answersBlockStackView.heightAnchor.constraint(equalToConstant: 310),
            
            topView.heightAnchor.constraint(equalToConstant: 60),
            
            bottomView.heightAnchor.constraint(equalToConstant: 130),
            
            promptStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            promptStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            promptStackView.heightAnchor.constraint(equalToConstant: 81)
        ])
    }
}




//    private let numberALabel: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 24)
//        label.textColor = .white
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "A"
//        label.numberOfLines = 0
//        label.textAlignment = .left
//        return label
//    }()
//
//    private let answerALabel: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 24)
//        label.textColor = .white
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "question A"
//        label.numberOfLines = 0
//        label.textAlignment = .right
//        return label
//    }()
//
//    private let numberBLabel: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 24)
//        label.textColor = .white
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "B"
//        label.numberOfLines = 0
//        label.textAlignment = .left
//        return label
//    }()
//
//    private let answerBLabel: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 24)
//        label.textColor = .white
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "question B"
//        label.numberOfLines = 0
//        label.textAlignment = .right
//        return label
//    }()
//
//    private let numberCLabel: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 24)
//        label.textColor = .white
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "C"
//        label.numberOfLines = 0
//        label.textAlignment = .left
//        return label
//    }()
//
//    private let answerCLabel: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 24)
//        label.textColor = .white
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "question C"
//        label.numberOfLines = 0
//        label.textAlignment = .right
//        return label
//    }()
//
//    private let numberDLabel: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 24)
//        label.textColor = .white
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "D"
//        label.numberOfLines = 0
//        label.textAlignment = .left
//        return label
//    }()
//
//    private let answerDLabel: UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 24)
//        label.textColor = .white
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "question D"
//        label.numberOfLines = 0
//        label.textAlignment = .right
//        return label
//    }()


//    private let answerAStackView: UIStackView = {
//        let stackView = UIStackView()
//        stackView.spacing = 30
//        stackView.distribution = .fillEqually
//        stackView.axis = .horizontal
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        return stackView
//    }()
//
//    private let answerBStackView: UIStackView = {
//        let stackView = UIStackView()
//        stackView.spacing = 10
//        stackView.distribution = .fillEqually
//        stackView.axis = .horizontal
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        return stackView
//    }()
//
//    private let answerCStackView: UIStackView = {
//        let stackView = UIStackView()
//        stackView.spacing = 10
//        stackView.distribution = .fillEqually
//        stackView.axis = .horizontal
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        return stackView
//    }()
//
//    private let answerDStackView: UIStackView = {
//        let stackView = UIStackView()
//        stackView.spacing = 10
//        stackView.distribution = .fillEqually
//        stackView.axis = .horizontal
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        return stackView
//    }()


//        answerAStackView.addArrangedSubview(numberALabel)
//        answerAStackView.addArrangedSubview(answerALabel)
//
//        answerBStackView.addArrangedSubview(numberBLabel)
//        answerBStackView.addArrangedSubview(answerBLabel)
//
//        answerCStackView.addArrangedSubview(numberCLabel)
//        answerCStackView.addArrangedSubview(answerCLabel)
//
//        answerDStackView.addArrangedSubview(numberDLabel)
//        answerDStackView.addArrangedSubview(answerDLabel)

//        answersBlockStackView.addArrangedSubview(answerAStackView)
//        answersBlockStackView.addArrangedSubview(answerBStackView)
//        answersBlockStackView.addArrangedSubview(answerCStackView)
//        answersBlockStackView.addArrangedSubview(answerDStackView)
