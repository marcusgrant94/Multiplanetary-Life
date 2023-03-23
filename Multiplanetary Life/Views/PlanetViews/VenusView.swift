//
//  VenusView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct VenusView: View {

    var body: some View {
            VStack() {
                Image("VenusHome")
                    .resizable()
                    .scaledToFit()
                Text("Venus")
                    .font(.title).bold()
                    .frame(maxWidth: .infinity, maxHeight: 10, alignment: .leading)
                    .padding()
                HStack(spacing: 1) {
                    Image("DFS")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 30)
                    Text("248,000,000 km")
                        .font(.headline)
                    
                    Image("DFE")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 30)
                    Text("108,000,000 km")
                        .font(.headline)
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
                
                
                TabView {
                    VenusDescriptionList[0]
                    VenusDescriptionList[1]
                    VenusDescriptionList[2]
                    VenusDescriptionList[3]
        
                }
                .frame(maxWidth: 400, maxHeight: 200, alignment: .top)
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .interactive))
//                Text(planet.description)
//                    .padding()
//                    .frame(maxWidth: 400, maxHeight: 200, alignment: .top)
                
                HStack {
                NavigationLink(destination: QuizView2(gameManagerVM2: GameManagerVM2()), label: {
                        Text("Take The Quiz")
                            .frame(width: 150, height: 60, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.teal)
                            .buttonStyle(.bordered)
                            .cornerRadius(10)
                })
                
                    
                    NavigationLink(destination: InfoVenus(), label: {
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



struct VenusView_Previews: PreviewProvider {
    static var previews: some View {
        VenusView()
    }
}
