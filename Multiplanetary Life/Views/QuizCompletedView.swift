//
//  QuizCompletedView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import Foundation
import SwiftUI

struct QuizCompletedView: View {
    var gameManager: GameManagerVM
    var body: some View {
        VStack {
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color.yellow)
                .font(.system(size: 60))
                .padding()
            
            ReusableText(text: gameManager.model.quizWinningStatus ?
                         "That a wrap" :
                            "Game over",
                         size: 30)
            .padding()
            
            ReusableText(text: gameManager.model.quizWinningStatus ?
                         "Thank you for playing" :
                            "Better luck next time",
                         size: 30)
            .padding()
            
            Button {
                gameManager.restartGame()
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
        }
    }
}
