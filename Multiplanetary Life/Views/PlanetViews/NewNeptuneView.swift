//
//  NewNeptuneView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/19/23.
//

import SwiftUI

struct NewNeptuneView: View {
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        VStack {
            Image("neptunetransparent")
                .resizable()
                .scaledToFit()
                .frame(width: 330, height: 450, alignment: .top)
                .offset(y: 80)
            
            
            
            
            
            Text("Swipe for more information ->")
                .font(.subheadline)
                .offset(x: 75, y: -40)
            TabView {
                NeptuneDescriptionList[0]
                NeptuneDescriptionList[1]
                NeptuneDescriptionList[2]
                NeptuneDescriptionList[3]
                
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
                NavigationLink(destination: QuizView8(gameManagerVM8: GameManagerVM8()), label: {
                    Text("Take The Quiz")
                        .frame(width: 150, height: 60, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .buttonStyle(.bordered)
                        .cornerRadius(10)
                })
                
                
                NavigationLink(destination: InfoNeptune(), label: {
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
        .navigationTitle("Neptune")
        .onAppear {
            AppReviewRequest.requestReviewIfNeeded()
        }
        
        
    }
    
    struct NewNeptuneView_Previews: PreviewProvider {
        static var previews: some View {
            NewNeptuneView()
        }
    }
}
