//
//  QuizView5.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct QuizView5: View {
    @ObservedObject var gameManagerVM5: GameManagerVM5
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        if purchaseManager.hasUnlockedPro {
            ZStack {
                Image("JupiterInfo")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fill)
                    .ignoresSafeArea()
                
                if (gameManagerVM5.model.quizCompleted) {
                    QuizCompletedView5(gameManagerVM5: gameManagerVM5)
                } else {
                    VStack {
                        ReusableText(text: "Jupiter Quiz", size: 30)
                            .padding()
                        
                        ReusableText(text: gameManagerVM5.model.quizModel.question, size: 25)
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
                                .trim(from: 0.0, to: min(CGFloat((Double(gameManagerVM5.progress) * Double(gameManagerVM5.maxProgress))/100),1.0))
                                .stroke(LinearGradient(colors: [.orange, .red],
                                                       startPoint: .topLeading,
                                                       endPoint: .bottomTrailing),
                                        style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                                .rotationEffect(Angle(degrees: 270))
                                .animation(Animation.linear(duration: Double(gameManagerVM5.maxProgress)), value: gameManagerVM5.progress)
                            
                            ReusableText(text: String(gameManagerVM5.progress), size: 30)
                        }.frame(width: 150, height: 150)
                        
                        
                        Spacer()
                        
                        OptionsGridView5(gameManagerVM5: gameManagerVM5)
                    }
                }
            }
        } else {
            PaywallView()
        }
        
    }
}

struct QuizView5_Previews: PreviewProvider {
    static var previews: some View {
        QuizView5(gameManagerVM5: GameManagerVM5()).environmentObject(PurchaseManager())
    }
}
