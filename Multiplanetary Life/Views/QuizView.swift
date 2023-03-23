//
//  QuizView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct QuizView: View {
    @ObservedObject var gameManagerVM: GameManagerVM
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        if purchaseManager.hasUnlockedPro {
            NavigationView {
                ZStack {
                    Image("MercuryInfo")
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fill)
                        .ignoresSafeArea()
                    
                    if (gameManagerVM.model.quizCompleted) {
                        QuizCompletedView(gameManager: gameManagerVM)
                    } else {
                        VStack {
                            
                            ReusableText(text: "Mercury Quiz", size: 30)
                                .padding()
                            
                            ReusableText(text: gameManagerVM.model.quizModel.question, size: 25)
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
                                    .trim(from: 0.0, to: min(CGFloat((Double(gameManagerVM.progress) * Double(gameManagerVM.maxProgress))/100),1.0))
                                    .stroke(LinearGradient(colors: [.orange, .red],
                                                           startPoint: .topLeading,
                                                           endPoint: .bottomTrailing),
                                            style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                                    .rotationEffect(Angle(degrees: 270))
                                    .animation(Animation.linear(duration: Double(gameManagerVM.maxProgress)), value: gameManagerVM.progress)
                                
                                ReusableText(text: String(gameManagerVM.progress), size: 30)
                            }.frame(width: 150, height: 150)
                            
                            
                            Spacer()
                            
                            OptionsGridView(gameManagerVM: gameManagerVM)
                        }
                    }
                }
            }
        } else {
            PaywallView()
        }
    }
    }





struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(gameManagerVM: GameManagerVM()).environmentObject(PurchaseManager())
    }
}
