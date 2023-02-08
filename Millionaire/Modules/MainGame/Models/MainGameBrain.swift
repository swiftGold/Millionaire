//
//  MainGameBrain.swift
//  Millionaire
//
//  Created by Сергей Золотухин on 05.02.2023.
//
 
struct MainGameBrain {
    var questionNumber = 0
    let intArray = [1, 2, 3, 4]
    var hallHelp: HallHelpModel?
    
    let quizMulti = [
        QuestionMulti(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine", "OMG testing"], correctAnswer: "2"),
        QuestionMulti(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100", "150"], correctAnswer: "3"),
        QuestionMulti(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time", "OMG testing"], correctAnswer: "2"),
        QuestionMulti(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet", "OMG testing"], correctAnswer: "1")
    ]
    
    func getQuestionText() -> String {
        return quizMulti[questionNumber].q
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quizMulti.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quizMulti[questionNumber].correctAnswer {
            return true
        } else {
            return false
        }
    }
    
    func getButtonTitle(with buttonNumber: Int) -> String {
        let stringValue = quizMulti[questionNumber].a[buttonNumber]
        return stringValue
    }
    
    mutating func fiftyFifty() -> [Int] {
        //выбираем два неправильных ответа
        var arrayQ = intArray
        
        guard let correctInt = Int(quizMulti[questionNumber].correctAnswer) else { fatalError() }
        
        arrayQ.enumerated().forEach { arrayIndex, arrayValue in
            if arrayValue == correctInt {
                arrayQ.remove(at: arrayIndex)
            }
        }
        
        guard let randomElement = arrayQ.randomElement() else { fatalError() }
        
        arrayQ.enumerated().forEach { arrayIndex, arrayValue in
            if arrayValue == randomElement {
                arrayQ.remove(at: arrayIndex)
            }
        }
        return arrayQ
    }
    
    mutating func hallHelpValues() {
        //делаем модель для отображения помощи зала
        guard let correctInt = Int(quizMulti[questionNumber].correctAnswer) else { fatalError() }
                
        switch correctInt {
        case 1:
            hallHelp = HallHelpModel(firstValue: 350, secondValue: 25, thirdValue: 75, fourthValue: 50)
        case 2:
            hallHelp = HallHelpModel(firstValue: 25, secondValue: 350, thirdValue: 75, fourthValue: 50)
        case 3:
            hallHelp = HallHelpModel(firstValue: 25, secondValue: 75, thirdValue: 350, fourthValue: 50)
        case 4:
            hallHelp = HallHelpModel(firstValue: 25, secondValue: 75, thirdValue: 50, fourthValue: 350)
        default:
            print("Omg Omg!!!")
        }
    }
}
