//
//  QuestionsViewModel.swift
//  Millionaire
//
//  Created by Сергей Золотухин on 05.02.2023.
//

//struct QuestionsViewModel {
    import UIKit

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
            yellowGradient.colors = [yellowColor.cgColor, yellowMiddleColor.cgColor, yellowColor.cgColor]
            yellowGradient.startPoint = CGPoint(x: 0, y: 0)
            yellowGradient.endPoint = CGPoint(x: 1, y: 1)
            yellowGradient.frame = bounds
            layer.insertSublayer(yellowGradient, at: 0)
        }
    }
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 44))
        button.backgroundColor = .yellow
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        print("Button Tapped")
    }
}
