//
//  QuizView6.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct QuizView6: View {
    @ObservedObject var gameManagerVM6: GameManagerVM6
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        if purchaseManager.hasUnlockedPro {
            ZStack {
                Image("SaturnInfo")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fill)
                    .ignoresSafeArea()
                
                if (gameManagerVM6.model.quizCompleted) {
                    QuizCompletedView6(gameManagerVM6: gameManagerVM6)
                } else {
                    VStack {
                        ReusableText(text: "Saturn Quiz", size: 30)
                            .padding()
                        
                        ReusableText(text: gameManagerVM6.model.quizModel.question, size: 25)
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
                                .trim(from: 0.0, to: min(CGFloat((Double(gameManagerVM6.progress) * Double(gameManagerVM6.maxProgress))/100),1.0))
                                .stroke(LinearGradient(colors: [.orange, .red],
                                                       startPoint: .topLeading,
                                                       endPoint: .bottomTrailing),
                                        style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                                .rotationEffect(Angle(degrees: 270))
                                .animation(Animation.linear(duration: Double(gameManagerVM6.maxProgress)), value: gameManagerVM6.progress)
                            
                            ReusableText(text: String(gameManagerVM6.progress), size: 30)
                        }.frame(width: 150, height: 150)
                        
                        
                        Spacer()
                        
                        OptionsGridView6(gameManagerVM6: gameManagerVM6)
                    }
                }
            }
        } else {
            PaywallView()
        }
        
    }
}

struct QuizView6_Previews: PreviewProvider {
    static var previews: some View {
        QuizView6(gameManagerVM6: GameManagerVM6()).environmentObject(PurchaseManager())
    }
}
