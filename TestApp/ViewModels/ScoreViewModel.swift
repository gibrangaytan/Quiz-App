//
//  ScoreViewModel.swift
//  TestApp
//
//  Created by GIBRAN I GAYTAN SILVA on 8/19/22.
//

import Foundation
struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
   
    var percentage: Int {
      (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}

