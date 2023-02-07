//
//  Question.swift
//  Millionaire
//
//  Created by Vania Aryutov on 05.02.2023.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String
    
    init(text: String, answer: [String], correctAnswer: String) {
        self.text = text
        self.answer = answer
        self.correctAnswer = correctAnswer
    }
}
