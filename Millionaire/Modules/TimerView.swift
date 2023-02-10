//
//  Timer.swift
//  Millionaire
//
//  Created by Игорь Клевжиц on 10.02.2023.
//

import UIKit
import AVFoundation

class TimerView: UIView {
    
    private let timerImages = ["0secs", "1sec", "2secs", "3secs", "4secs", "5secs", "6secs", "7secs", "8secs", "9secs", "10secs", "11secs", "12secs", "13secs", "14secs", "15secs", "16secs", "17secs", "18secs", "19secs", "20secs", "21secs", "22secs", "23secs", "24secs", "25secs", "26secs", "27secs", "28secs", "29secs", "30secs"]
    
    private let timerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "30secs")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private var timer = Timer()
    private var timerSec = 30
    private var timerFlag = true
    var player: AVAudioPlayer!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(timerImageView)
    }
    
    private func timerOn() {
        if timerSec > 0 {
            timerSec -= 1
            timerImageView.image = UIImage(named: timerImages[timerSec])
        } else {
            timerFlag = false
            player.stop()
            timer.invalidate()
        }
    }
    
    func timerStart() -> Bool {
        let url = Bundle.main.url(forResource: "watch", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.timerOn()
        })
        return timerFlag
    }
    
    func timerPause() {
        player.stop()
        timer.invalidate()
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            timerImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            timerImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            timerImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            timerImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
    
}
