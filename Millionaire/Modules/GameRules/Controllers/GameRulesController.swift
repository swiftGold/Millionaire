//
//  GameRulesController.swift
//  Millionaire
//
//  Created by Сергей Золотухин on 05.02.2023.
//

import UIKit

final class GameRulesController: UIViewController {
        
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "backgroundImage")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var backToMainMenuButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Возврат", for: .normal)
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        button.backgroundColor = .answerButtonBackground
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var rulesTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = .systemFont(ofSize: 20)
        textView.textAlignment = .justified
        textView.backgroundColor = .clear
        textView.isEditable = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewController()
        addRules()
    }
    
    @objc
    private func didTapButton() {
        dismiss(animated: false)
    }
}

private extension GameRulesController {
    enum Constants {
        static let rulesTextViewAnchor: CGFloat = 16
    }
    
    func setupViewController() {
        addSubviews()
        setConstraints()
    }
    
    func addRules() {
        rulesTextView.text = rulesModel.description
    }
    
    func addSubviews() {
        view.addSubview(backgroundImageView)
        view.addSubview(rulesTextView)
        view.addSubview(backToMainMenuButton)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            rulesTextView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Constants.rulesTextViewAnchor),
            rulesTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.rulesTextViewAnchor),
            rulesTextView.bottomAnchor.constraint(equalTo: backToMainMenuButton.topAnchor, constant: -Constants.rulesTextViewAnchor),
            rulesTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.rulesTextViewAnchor),

            backToMainMenuButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            backToMainMenuButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            backToMainMenuButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            backToMainMenuButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

private extension GameRulesController {
    var rulesModel: Rules {
        .init(description: """
              Игра Кто хочет стать миллионером? - это конкурс викторина, в котором участники должны правильно ответить на ряд вопросов с несколькими вариантами ответов, чтобы перейти на следующий уровень. Всего 15 вопросов, каждый вопрос стоит определенной суммы денег, участники не имеют никаких временных ограничений для предоставления ответа.\n Участники также получают три вида подсказок, чтобы помочь себе, если они застряли на конкретном вопросе. \n Подсказки. \n Участникам разрешается применить три подсказки, которые они могут использовать в любой момент викторины. Каждая из подсказок может быть использована только один раз. \n 50/50 - исключает два неправильных ответа из множественного выбора, оставляя участнику только один правильный и один неправильный вариант. Это означает, что у него есть шанс 50/50. \n Задать вопрос аудитории - залу задают тот же вопрос, что и участнику, и проводится быстрый опрос, чтобы показать их ответы. На диаграмме показывается явное преимущество определенного варианта, эта подсказка может быть чрезвычайно полезной. Участнику дается возможность согласиться с результатами, полученными от аудитории. \n Позвоните другу - участникам разрешается сделать 30-секундный звонок другу или члену семьи и спросить, знают ли они ответ на вопрос.
              """)
    }
}
