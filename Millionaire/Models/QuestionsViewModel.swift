//
//  QuestionsViewModel.swift
//  Millionaire
//
//  Created by Сергей Золотухин on 05.02.2023.
//
import UIKit
struct QuestionsViewModel {
    

    private let bottomView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

        class YellowGradientButton: UIButton {
            
            override init(frame: CGRect) {
                super.init(frame: frame)
                setupButton()
            }
            
            required init?(coder aDecoder: NSCoder) {
                super.init(coder: aDecoder)
                setupButton()
            }
            
            private func setupButton() {
                let yellowColor = UIColor.yellow
                let yellowMiddleColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.5)
                let yellowGradient = CAGradientLayer()
                yellowGradient.colors = [yellowMiddleColor.cgColor, yellowColor.cgColor, yellowMiddleColor.cgColor]
                yellowGradient.startPoint = CGPoint(x: 0, y: 0)
                yellowGradient.endPoint = CGPoint(x: 1, y: 1)
                yellowGradient.frame = bounds
                layer.insertSublayer(yellowGradient, at: 0)
            }
        }
    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let button = UIButton(frame: CGRect(x: 100, y: 100, width: 50, height: 40))
            button.backgroundColor = .yellow
            button.setTitle("Button", for: .normal)
            button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            view.addSubview(button)
        }
        
        @objc func buttonTapped(_ sender: UIButton) {
            print("Button Tapped")
        }
    }

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
}
