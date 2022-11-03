//
//  Question.swift
//  TestApp
//
//  Created by GIBRAN I GAYTAN SILVA on 8/16/22.
//

import Foundation
struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?",
                 possibleAnswers: [
                    "Steve Jobs",
                    "Linus Torvalds",
                    "Bill Gates",
                    "Tim Berners-Lee"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "What was the first computer bug?",
                 possibleAnswers: [
                    "Fly",
                    "Bee",
                    "Moth",
                    "Roach"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "What was the first object oriented programming language?",
                 possibleAnswers: [
                    "Simula",
                    "Python",
                    "Swift",
                    "C"
                 ],
                 correctAnswerIndex: 0)
    ]

}
