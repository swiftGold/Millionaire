//
//  ProgressView.swift
//  Millionaire
//
//  Created by Vania Aryutov on 06.02.2023.
//

import UIKit
import AVFoundation

class ProgressView: UIView {
    enum Constants {
        static let idProgressCell: String = "idProgressCell"
        static let viewCornerRadius: CGFloat = 15.0
        static let collectionMinimumLineSpacing: CGFloat = -2.0
        static let collectionViewSpacing: CGFloat = 0.0
    }
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = Constants.collectionMinimumLineSpacing
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    private let labelBrain = LabelBrain()
    
    //MARK: - LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        collectionView.register(ProgressCollectionViewCell.self, forCellWithReuseIdentifier: Constants.idProgressCell)
        
        setupViews()
        setConstraints()
        setDelegates()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setDelegates() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    private func setupViews() {
        addSubview(collectionView)
    }
    
    private func setConstraints() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: Constants.collectionViewSpacing),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -Constants.collectionViewSpacing),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.collectionViewSpacing),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Constants.collectionViewSpacing)
        ])
    }
}

//MARK: - UICollectionViewDelegate
extension ProgressView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}

//MARK: - UICollectionViewFlowLayout

extension ProgressView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width,
               height: collectionView.frame.height / 15)
    }
}

//MARK: - UICollectionViewDataSource
extension ProgressView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.idProgressCell, for: indexPath) as! ProgressCollectionViewCell
        let item = labelBrain.labels[indexPath.row]
        cell.moneyLabel.text = item.moneyLabel
        cell.questionLabel.text = item.numberLabel
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        15
    }
}
