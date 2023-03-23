//
//  NewSaturnView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/19/23.
//

import SwiftUI

struct NewSaturnView: View {
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        VStack {
            Image("saturntransparent")
                .resizable()
                .scaledToFit()
                .frame(width: 410, height: 450, alignment: .top)
                .offset(y: 80)
            
            
            
            
            
            Text("Swipe for more information ->")
                .font(.subheadline)
                .offset(x: 75, y: -45)
            TabView {
                SaturnDescriptionList[0]
                SaturnDescriptionList[1]
                SaturnDescriptionList[2]
                SaturnDescriptionList[3]
                
            }
            .frame(maxWidth: 400, maxHeight: 200, alignment: .top)
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .background(Color.white)
            .cornerRadius(30)
            .frame(width: 375, height: 250, alignment: .top)
            .shadow(radius: 4)
            .offset(y: -43)
            
            
            HStack {
                NavigationLink(destination: QuizView6(gameManagerVM6: GameManagerVM6()), label: {
                    Text("Take The Quiz")
                        .frame(width: 150, height: 60, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .buttonStyle(.bordered)
                        .cornerRadius(10)
                })
                
                
                NavigationLink(destination: InfoSaturn(), label: {
                    Text("More Information")
                        .frame(width: 150, height: 60, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .buttonStyle(.bordered)
                        .cornerRadius(10)
                        .frame(maxWidth: .infinity, maxHeight: 50, alignment: .trailing)
                        .padding(.horizontal)
                })
                
            }
            .offset(y: -80)
            .frame(maxWidth: .infinity, maxHeight: 70, alignment: .trailing)
            .padding(.horizontal)
            
        }
        .navigationTitle("Saturn")
        .onAppear {
            AppReviewRequest.requestReviewIfNeeded()
        }
        
        
    }
    
    struct NewSaturnView_Previews: PreviewProvider {
        static var previews: some View {
            NewSaturnView()
        }
    }
}
