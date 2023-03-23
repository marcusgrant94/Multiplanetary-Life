//
//  QuizView3.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct QuizView3: View {
    @ObservedObject var gameManagerVM3: GameManagerVM3
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        if purchaseManager.hasUnlockedPro {
            ZStack {
                Image("EarthInfo")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fill)
                    .ignoresSafeArea()
                
                if (gameManagerVM3.model.quizCompleted) {
                    QuizCompletedView3(gameManagerVM3: gameManagerVM3)
                } else {
                    VStack {
                        ReusableText(text: "Earth Quiz", size: 30)
                            .padding()
                        
                        ReusableText(text: gameManagerVM3.model.quizModel.question, size: 25)
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
                                .trim(from: 0.0, to: min(CGFloat((Double(gameManagerVM3.progress) * Double(gameManagerVM3.maxProgress))/100),1.0))
                                .stroke(LinearGradient(colors: [.orange, .red],
                                                       startPoint: .topLeading,
                                                       endPoint: .bottomTrailing),
                                        style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                                .rotationEffect(Angle(degrees: 270))
                                .animation(Animation.linear(duration: Double(gameManagerVM3.maxProgress)), value: gameManagerVM3.progress)
                            
                            ReusableText(text: String(gameManagerVM3.progress), size: 30)
                        }.frame(width: 150, height: 150)
                        
                        
                        Spacer()
                        
                        OptionsGridView3(gameManagerVM3: gameManagerVM3)
                    }
                }
            }
        } else {
            PaywallView()
        }
        
    }
}

struct QuizView3_Previews: PreviewProvider {
    static var previews: some View {
        QuizView3(gameManagerVM3: GameManagerVM3()).environmentObject(PurchaseManager())
    }
}
