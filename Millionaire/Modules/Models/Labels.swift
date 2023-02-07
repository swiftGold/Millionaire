//
//  Labels.swift
//  Millionaire
//
//  Created by Vania Aryutov on 07.02.2023.
//

import Foundation

struct Labels {
    var moneyLabel: String
    var numberLabel: String
    var safeMoney: Bool
    init(moneyLabel: String, numberLabel: String, safeMoney: Bool) {
        self.moneyLabel = moneyLabel
        self.numberLabel = numberLabel
        self.safeMoney = safeMoney
    }
}
