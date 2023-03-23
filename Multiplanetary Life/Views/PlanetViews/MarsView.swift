//
//  MarsView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct MarsView: View {

    var body: some View {
            VStack() {
                Image("MarsHome")
                    .resizable()
                    .scaledToFit()
                Text("Mars")
                    .font(.title).bold()
                    .frame(maxWidth: .infinity, maxHeight: 10, alignment: .leading)
                    .padding()
                HStack(spacing: 1) {
                    Image("DFS")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 30)
                    Text("84,000,000 km")
                        .font(.headline)
                    
                    Image("DFE")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 30)
                    Text("231,000,000 km")
                        .font(.headline)
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
                
                
                TabView {
                    MarsDescriptionList[0]
                    MarsDescriptionList[1]
                    MarsDescriptionList[2]
                    MarsDescriptionList[3]
        
                }
                .frame(maxWidth: 400, maxHeight: 200, alignment: .top)
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .interactive))
//                Text(planet.description)
//                    .padding()
//                    .frame(maxWidth: 400, maxHeight: 200, alignment: .top)
                
                HStack {
                NavigationLink(destination: QuizView4(gameManagerVM4: GameManagerVM4()), label: {
                        Text("Take The Quiz")
                            .frame(width: 150, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.teal)
                            .buttonStyle(.bordered)
                            .cornerRadius(10)
                })
                
                    
                    NavigationLink(destination: InfoMars(), label: {
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



struct MarsView_Previews: PreviewProvider {
    static var previews: some View {
        MarsView()
    }
}
