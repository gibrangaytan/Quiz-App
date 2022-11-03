//
//  GameViewModel.swift
//  TestApp
//
//  Created by GIBRAN I GAYTAN SILVA on 8/18/22.
//

import SwiftUI

class GameViewModel: ObservableObject {
    @Published private var game = Game()
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var guessWasMade: Bool {
         if let _ = game.guesses[currentQuestion] {
             return true
         } else {
             return false
         }
     }
    
    var isGameOver: Bool {
        return game.isOver
     }
    
    var correctGuesses: Int {
      game.correctGuessues
    }
   
    var incorrectGuesses: Int {
      game.incorrectGuessues
    }

    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }

    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return GameColor.main
        }
    }


    var questionProgressText: String {
      "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    func increaseCorrectCount (forOptionIndex optionIndex: Int){
        if let guessedIndex = game.guesses[currentQuestion] {
            game.increaseCorrectCount(isCorrect: guessedIndex == currentQuestion.correctAnswerIndex)
        }
    }
}
