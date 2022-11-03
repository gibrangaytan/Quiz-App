//
//  Game.swift
//  TestApp
//
//  Created by GIBRAN I GAYTAN SILVA on 8/18/22.
//

import Foundation
struct Game{
    private(set) var currentQuestionIndex = 0
    private let questions = Question.allQuestions.shuffled()
    private(set) var guesses = [Question: Int]()
    private(set) var isOver = false
    private(set)var correctGuessues = 0
    private(set)var incorrectGuessues = 0

    var numberOfQuestions: Int {
        questions.count
    }
 
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
 
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }

    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
    mutating func increaseCorrectCount (isCorrect: Bool){
        if isCorrect {
            correctGuessues += 1
        } else {
            incorrectGuessues += 1
        }
    }
}
