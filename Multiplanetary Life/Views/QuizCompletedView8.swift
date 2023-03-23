//
//  QuizCompletedView8.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct QuizCompletedView8: View {
    var gameManagerVM8: GameManagerVM8
    var body: some View {
        VStack {
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color.yellow)
                .font(.system(size: 60))
                .padding()
            
            ReusableText(text: gameManagerVM8.model.quizWinningStatus ?
                         "You Pass" :
                            "GAME OVER",
                         size: 30)
                .padding()
            
            ReusableText(text: gameManagerVM8.model.quizWinningStatus
                         ? "What Would you like to do?"
                         : "Better luck next time",
                         size: 30)
                .padding()
            
            Button {
                gameManagerVM8.restartGame()
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

struct QuizCompletedView8_Previews: PreviewProvider {
    static var previews: some View {
        QuizCompletedView8(gameManagerVM8: GameManagerVM8())
    }
}

