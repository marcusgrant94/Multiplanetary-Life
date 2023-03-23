//
//  Titan.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/23/23.
//

import SwiftUI

struct Titan: View {
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        VStack {
            Image("titan")
                .resizable()
                .scaledToFit()
                .frame(width: 430, height: 450, alignment: .top)
                .offset(y: 80)
            
            
            
            
            
            Text("Swipe for more information ->")
                .font(.subheadline)
                .offset(x: 65, y: 3)
            TabView {
                TitanList[0]
                TitanList[1]
                TitanList[2]
                
            }
            .frame(maxWidth: 400, maxHeight: 200, alignment: .top)
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .background(Color.white)
            .cornerRadius(30)
            .frame(width: 375, height: 250, alignment: .top)
            .shadow(radius: 4)
            
            
//            HStack {
//                NavigationLink(destination: QuizView(gameManagerVM: GameManagerVM()), label: {
//                    Text("Take The Quiz")
//                        .frame(width: 150, height: 60, alignment: .center)
//                        .foregroundColor(.white)
//                        .background(Color.accentColor)
//                        .buttonStyle(.bordered)
//                        .cornerRadius(10)
//                })
//                
//                
//                NavigationLink(destination: InfoMercury(), label: {
//                    Text("More Information")
//                        .frame(width: 150, height: 60, alignment: .center)
//                        .foregroundColor(.white)
//                        .background(Color.accentColor)
//                        .buttonStyle(.bordered)
//                        .cornerRadius(10)
//                        .frame(maxWidth: .infinity, maxHeight: 50, alignment: .trailing)
//                        .padding(.horizontal)
//                })
//                
//            }
//            .offset(y: -40)
//            .frame(maxWidth: .infinity, maxHeight: 70, alignment: .trailing)
//            .padding(.horizontal)
            
        }
        .navigationTitle("Titan")
        .onAppear {
            AppReviewRequest.requestReviewIfNeeded()
        }
        
        
    }
    
    struct Titan_Previews: PreviewProvider {
        static var previews: some View {
            Titan()
        }
    }
}
