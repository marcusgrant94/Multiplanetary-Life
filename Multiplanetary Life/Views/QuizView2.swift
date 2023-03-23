//
//  QuizView2.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct QuizView2: View {
    @ObservedObject var gameManagerVM2: GameManagerVM2
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        if purchaseManager.hasUnlockedPro {
            ZStack {
                Image("VenusInfo")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fill)
                    .ignoresSafeArea()
                
                
                if (gameManagerVM2.model.quizCompleted) {
                    QuizCompletedView2(gameManagerVM2: gameManagerVM2)
                } else {
                    VStack {
                        ReusableText(text: "Venus Quiz", size: 30)
                            .padding()
                        
                        ReusableText(text: gameManagerVM2.model.quizModel.question, size: 25)
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
                                .trim(from: 0.0, to: min(CGFloat((Double(gameManagerVM2.progress) * Double(gameManagerVM2.maxProgress))/100),1.0))
                                .stroke(LinearGradient(colors: [.orange, .red],
                                                       startPoint: .topLeading,
                                                       endPoint: .bottomTrailing),
                                        style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                                .rotationEffect(Angle(degrees: 270))
                                .animation(Animation.linear(duration: Double(gameManagerVM2.maxProgress)), value: gameManagerVM2.progress)
                            
                            ReusableText(text: String(gameManagerVM2.progress), size: 30)
                        }.frame(width: 150, height: 150)
                        
                        
                        Spacer()
                        
                        OptionsGridView2(gameManagerVM2: gameManagerVM2)
                    }
                }
            }
        } else {
            PaywallView()
        }
        
    }
    
    
    struct QuizView2_Previews: PreviewProvider {
        static var previews: some View {
            QuizView2(gameManagerVM2: GameManagerVM2()).environmentObject(PurchaseManager())
        }
    }
    
}
