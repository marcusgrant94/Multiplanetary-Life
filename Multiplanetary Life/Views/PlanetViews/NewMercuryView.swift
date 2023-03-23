//
//  NewMercuryView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct NewMercuryView: View {
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        VStack {
            Image("mercurytransparent")
                .resizable()
                .scaledToFit()
                .frame(width: 315, height: 450, alignment: .top)
                .offset(y: 80)
            
            
            
            
            
            Text("Swipe for more information ->")
                .font(.subheadline)
                .offset(x: 75, y: -40)
            TabView {
                MercuryDescriptionList[0]
                MercuryDescriptionList[1]
                MercuryDescriptionList[2]
                MercuryDescriptionList[3]
    
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
            NavigationLink(destination: QuizView(gameManagerVM: GameManagerVM()), label: {
                    Text("Take The Quiz")
                        .frame(width: 150, height: 60, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .buttonStyle(.bordered)
                        .cornerRadius(10)
            })
            
                
                NavigationLink(destination: InfoMercury(), label: {
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
        .navigationTitle("Mercury")
        .onAppear {
            AppReviewRequest.requestReviewIfNeeded()
        }
        
        
    }
    
    struct NewMercuryView_Previews: PreviewProvider {
        static var previews: some View {
            NewMercuryView().environmentObject(PurchaseManager())
        }
    }
}
