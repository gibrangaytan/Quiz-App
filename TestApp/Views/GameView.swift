//
//  ContentView.swift
//  TestApp
//
//  Created by GIBRAN I GAYTAN SILVA on 8/11/22.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
        
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,
                                                                            incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.isGameOver), label: { EmptyView() })
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
