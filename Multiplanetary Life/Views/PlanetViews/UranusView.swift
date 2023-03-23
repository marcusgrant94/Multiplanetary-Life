//
//  UranusView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct UranusView: View {
    
    var body: some View {
        
            VStack() {
                Image("UranusHome")
                    .resizable()
                    .scaledToFit()
                Text("Uranus")
                    .font(.title).bold()
                    .frame(maxWidth: .infinity, maxHeight: 10, alignment: .leading)
                    .padding()
                HStack(spacing: 1) {
                    Image("DFS")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 30)
                    Text("3 Billion km")
                        .font(.headline)
                    
                    Image("DFE")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 30)
                    Text("3 Billion km")
                        .font(.headline)
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
                
                
                TabView {
                    UranusDescriptionList[0]
                    UranusDescriptionList[1]
                    UranusDescriptionList[2]
                    UranusDescriptionList[3]
        
                }
                .frame(maxWidth: 400, maxHeight: 200, alignment: .top)
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .interactive))
//                Text(planet.description)
//                    .padding()
//                    .frame(maxWidth: 400, maxHeight: 200, alignment: .top)
                
                HStack {
                NavigationLink(destination: QuizView7(gameManagerVM7: GameManagerVM7()), label: {
                        Text("Take The Quiz")
                            .frame(width: 150, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.teal)
                            .buttonStyle(.bordered)
                            .cornerRadius(10)
                })
                
                    
                    NavigationLink(destination: InfoUranus(), label: {
                        Text("More Information")
                        .frame(width: 150, height: 60, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.teal)
                        .buttonStyle(.bordered)
                        .cornerRadius(10)
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .trailing)
                    .padding(.horizontal)
                    })
       
                    }
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .trailing)
                    .padding(.horizontal)
                
                
                
                   
                   
               
            }
            .onAppear {
                AppReviewRequest.requestReviewIfNeeded()
            }
        }
    }


struct UranusView_Previews: PreviewProvider {
    static var previews: some View {
        UranusView()
    }
}
