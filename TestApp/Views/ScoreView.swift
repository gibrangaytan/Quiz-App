//
//  ScoreView.swift
//  TestApp
//
//  Created by GIBRAN I GAYTAN SILVA on 8/19/22.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Final Score:")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses) ✅")
                    Text("\(viewModel.incorrectGuesses) ❌")
                }.font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz")
                    })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 10, incorrectGuesses: 9))
    }
}
