//
//  ProgressViewCell.swift
//  Millionaire
//
//  Created by Vania Aryutov on 06.02.2023.
//

import UIKit

class ProgressCollectionViewCell: UICollectionViewCell {
    enum Constants {
        static let progressSellFont: UIFont = UIFont.systemFont(ofSize: 20, weight: .medium)
        static let labelSideSpacing: CGFloat = 20.0
        static let cellBorderSizing: CGFloat = 2.0
    }
    
    lazy var moneyLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.progressSellFont
        label.textColor = .white
        label.text = ""
        return label
    }()
    
    lazy var questionLabel: UILabel = {
        let label = UILabel()
        label.font = Constants.progressSellFont
        label.textColor = .white
        label.text = ""
        return label
    }()
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.backgroundColor = .promptBorderColor
        contentView.layer.cornerRadius = 15.0
        contentView.layer.masksToBounds = true
        contentView.layer.borderWidth = Constants.cellBorderSizing
        contentView.layer.borderColor = UIColor.white.cgColor
        contentView.addSubview(moneyLabel)
        contentView.addSubview(questionLabel)
    }
    
    private func setConstraints() {
        moneyLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            moneyLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -Constants.labelSideSpacing),
            moneyLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            questionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Constants.labelSideSpacing),
            questionLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
}
