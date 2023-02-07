//
//  QuizBrain.swift
//  Millionaire
//
//  Created by Vania Aryutov on 05.02.2023.
//

import Foundation

struct QuestionBrain {
    let quiz = [
    Question(text: "Универсальные шаблоны помогают реализовать это", answer: ["Архитектуру", "Коллекции", "Переменные свойства", "Гибкие функции"], correctAnswer: "4"),
    Question(text: "Сколько способов обработки ошибок существует в Swift?", answer: ["2", "4", "1", "3"], correctAnswer: "2"),
    Question(text: "Обработка ошибок, это процесс ...?", answer: ["Реагирования на ошибки", "Прогнозирования ошибок", "Хранения ошибок", "Генерации ошибок"], correctAnswer: "1"),
    Question(text: "Как называется класс, у которого наследуют?", answer: ["Наследник", "Класс", "Подкласс", "Суперкласс"], correctAnswer: "4"),
    Question(text: "Если String пустая, то startIndex и endIndex будут ...?", answer: ["Пустыми", "nil", "Неравными", "Равными"], correctAnswer: "4"),
    Question(text: "Как традиционно называют экземпляр класса в ООП?", answer: ["Экземпляр", "Структура", "Объект", "Таргет"], correctAnswer: "3"),
    Question(text: "Что из перечисленного является ссылочным типом?", answer: ["Свойства", "Структуры", "Классы", "Перечисления"], correctAnswer: "3"),
    Question(text: "Можно ли сравнивать две строки?", answer: ["Нет", "Да", "Только !=", "Только =="], correctAnswer: "2"),
    Question(text: "Как пишется сокращенная форма записи массива в Swift?", answer: ["Array<ElementType>", "Array(ElementType)[]", "[ElementType]", "[ElementType]()"], correctAnswer: "3"),
    Question(text: "Сколько основных типов коллекций обеспечивает Swift?", answer: ["3", "5", "2", "4"], correctAnswer: "1"),
    Question(text: "Сколько основных свойств имеет UIStackView?", answer: ["4", "3", "2", "1"], correctAnswer: "1"),
    Question(text: "Для каких типов доступны деинициализаторы?", answer: ["Типы перечислений", "Структурные типы", "Все перечисленные ", "Классовые типы"], correctAnswer: "4"),
    Question(text: "Чем разделяются протокола в композиции протоколов?", answer: [",", "&", "-", ":"], correctAnswer: "2"),
    Question(text: "Какой тип хранит только положительные целые числа?", answer: ["UInt", "Int", "Double", "Float"], correctAnswer: "1"),
    Question(text: "Являются ли Swift Array универсальными?", answer: ["Нет", "Только Dictionary", "Да", "Только Array"], correctAnswer: "3")
    ]
}
