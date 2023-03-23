//
//  QuizView4.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct QuizView4: View {
    @ObservedObject var gameManagerVM4: GameManagerVM4
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        if purchaseManager.hasUnlockedPro {
            ZStack {
                Image("marsbackground2")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fill)
                    .ignoresSafeArea()

                
                if (gameManagerVM4.model.quizCompleted) {
                    QuizCompletedView4(gameManagerVM4: gameManagerVM4)
                } else {
                    VStack {
                        ReusableText(text: "Mars Quiz", size: 30)
                            .padding(50)
                        
                        ReusableText(text: gameManagerVM4.model.quizModel.question, size: 25)
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
                                .trim(from: 0.0, to: min(CGFloat((Double(gameManagerVM4.progress) * Double(gameManagerVM4.maxProgress))/100),1.0))
                                .stroke(LinearGradient(colors: [.orange, .red],
                                                       startPoint: .topLeading,
                                                       endPoint: .bottomTrailing),
                                        style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                                .rotationEffect(Angle(degrees: 270))
                                .animation(Animation.linear(duration: Double(gameManagerVM4.maxProgress)), value: gameManagerVM4.progress)
                            
                            ReusableText(text: String(gameManagerVM4.progress), size: 30)
                        }.frame(width: 150, height: 150)
                        
                        
                        Spacer()
                        
                        OptionsGridView4(gameManagerVM4: gameManagerVM4)
                            .offset(y: -40)
                            .padding(50)
                    }
                }
            }
        } else {
            PaywallView()
        }
        
    }
}

struct QuizView4_Previews: PreviewProvider {
    static var previews: some View {
        QuizView4(gameManagerVM4: GameManagerVM4()).environmentObject(PurchaseManager())
    }
}
