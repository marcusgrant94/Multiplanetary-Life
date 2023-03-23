//
//  QuizCompletedView7.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct QuizCompletedView7: View {
    var gameManagerVM7: GameManagerVM7
    var body: some View {
        VStack {
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color.yellow)
                .font(.system(size: 60))
                .padding()
            
            ReusableText(text: gameManagerVM7.model.quizWinningStatus ?
                         "You Pass" :
                            "GAME OVER",
                         size: 30)
                .padding()
            
            ReusableText(text: gameManagerVM7.model.quizWinningStatus
                         ? "What would you like to do?"
                         : "Better luck next time",
                         size: 30)
                .padding()
            
            Button {
                gameManagerVM7.restartGame()
            } label: {
                HStack {
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                        .padding()
                    
                    Text("Play Again")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                }
            }.frame(width: 300, height: 60, alignment: .center)
                .background(.purple.opacity(0.7))
                .cornerRadius(30)
                .padding()
            
            
        }
    }
}

struct QuizCompletedView7_Previews: PreviewProvider {
    static var previews: some View {
        QuizCompletedView7(gameManagerVM7: GameManagerVM7())
    }
}

