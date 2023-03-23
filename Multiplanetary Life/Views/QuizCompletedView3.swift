//
//  QuizCompletedView3.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct QuizCompletedView3: View {
    var gameManagerVM3: GameManagerVM3
    var body: some View {
        VStack {
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color.yellow)
                .font(.system(size: 60))
                .padding()
            
            ReusableText(text: gameManagerVM3.model.quizWinningStatus ?
                         "You Pass" :
                            "GAME OVER",
                         size: 30)
                .padding()
            
            ReusableText(text: gameManagerVM3.model.quizWinningStatus
                         ? "What would you like to do?"
                         : "Better luck next time",
                         size: 30)
                .padding()
            
            Button {
                gameManagerVM3.restartGame()
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

struct QuizCompletedView3_Previews: PreviewProvider {
    static var previews: some View {
        QuizCompletedView3(gameManagerVM3: GameManagerVM3())
    }
}
