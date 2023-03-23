//
//  NewEarthView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/19/23.
//

import SwiftUI

struct NewEarthView: View {
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        VStack {
            Image("EarthTransparent")
                .resizable()
                .scaledToFit()
                .frame(width: 330, height: 450, alignment: .top)
                .offset(y: 80)
            
            
            
            
            
            Text("Swipe for more information ->")
                .font(.subheadline)
                .offset(x: 75, y: -40)
            TabView {
                EarthDescriptionList[0]
                EarthDescriptionList[1]
                EarthDescriptionList[2]
                EarthDescriptionList[3]
                
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
                NavigationLink(destination: QuizView3(gameManagerVM3: GameManagerVM3()), label: {
                    Text("Take The Quiz")
                        .frame(width: 150, height: 60, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .buttonStyle(.bordered)
                        .cornerRadius(10)
                })
                
                
                NavigationLink(destination: InfoEarth(), label: {
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
            .offset(y: -85)
            .frame(maxWidth: .infinity, maxHeight: 70, alignment: .trailing)
            .padding(.horizontal)
            
        }
        .navigationTitle("Earth")
        .onAppear {
            AppReviewRequest.requestReviewIfNeeded()
        }
        
        
    }
    
    struct NewEarthView_Previews: PreviewProvider {
        static var previews: some View {
            NewEarthView()
        }
    }
}
