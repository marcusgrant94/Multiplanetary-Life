//
//  QuizView8.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct QuizView8: View {
    @ObservedObject var gameManagerVM8: GameManagerVM8
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        if purchaseManager.hasUnlockedPro {
            ZStack {
                Image("NeptuneInfo")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fill)
                    .ignoresSafeArea()
                
                if (gameManagerVM8.model.quizCompleted) {
                    QuizCompletedView8(gameManagerVM8: gameManagerVM8)
                } else {
                    VStack {
                        ReusableText(text: "Neptune Quiz", size: 30)
                            .padding()
                        
                        ReusableText(text: gameManagerVM8.model.quizModel.question, size: 25)
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
                                .trim(from: 0.0, to: min(CGFloat((Double(gameManagerVM8.progress) * Double(gameManagerVM8.maxProgress))/100),1.0))
                                .stroke(LinearGradient(colors: [.orange, .red],
                                                       startPoint: .topLeading,
                                                       endPoint: .bottomTrailing),
                                        style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                                .rotationEffect(Angle(degrees: 270))
                                .animation(Animation.linear(duration: Double(gameManagerVM8.maxProgress)), value: gameManagerVM8.progress)
                            
                            ReusableText(text: String(gameManagerVM8.progress), size: 30)
                        }.frame(width: 150, height: 150)
                        
                        
                        Spacer()
                        
                        OptionsGridView8(gameManagerVM8: gameManagerVM8)
                    }
                }
            }
        } else {
            PaywallView()
        }
        
    }
}

struct QuizView8_Previews: PreviewProvider {
    static var previews: some View {
        QuizView8(gameManagerVM8: GameManagerVM8()).environmentObject(PurchaseManager())
    }
}
