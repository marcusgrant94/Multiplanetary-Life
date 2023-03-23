//
//  QuizView7.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct QuizView7: View {
    @ObservedObject var gameManagerVM7: GameManagerVM7
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        if purchaseManager.hasUnlockedPro {
            ZStack {
                Image("UranusInfo")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fill)
                    .ignoresSafeArea()
                
                if (gameManagerVM7.model.quizCompleted) {
                    QuizCompletedView7(gameManagerVM7: gameManagerVM7)
                } else {
                    VStack {
                        ReusableText(text: "Uranus Quiz", size: 30)
                            .padding()
                        
                        ReusableText(text: gameManagerVM7.model.quizModel.question, size: 25)
                            .lineLimit(3)
                            .frame(width: UIScreen.main.bounds.size.width - 20, height: 60, alignment: .center)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                        
                        ZStack {
                            Circle()
                                .stroke(lineWidth: 15)
                                .foregroundColor(.gray)
                                .opacity(0.3)
                            
                            
                            Circle()
                                .trim(from: 0.0, to: min(CGFloat((Double(gameManagerVM7.progress) * Double(gameManagerVM7.maxProgress))/100),1.0))
                                .stroke(LinearGradient(colors: [.orange, .red],
                                                       startPoint: .topLeading,
                                                       endPoint: .bottomTrailing),
                                        style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                                .rotationEffect(Angle(degrees: 270))
                                .animation(Animation.linear(duration: Double(gameManagerVM7.maxProgress)), value: gameManagerVM7.progress)
                            
                            ReusableText(text: String(gameManagerVM7.progress), size: 30)
                        }.frame(width: 150, height: 150)
                        
                        
                        Spacer()
                        
                        OptionsGridView7(gameManagerVM7: gameManagerVM7)
                    }
                }
            }
        } else {
            PaywallView()
        }
        
    }
}

struct QuizView7_Previews: PreviewProvider {
    static var previews: some View {
        QuizView7(gameManagerVM7: GameManagerVM7()).environmentObject(PurchaseManager())
    }
}
