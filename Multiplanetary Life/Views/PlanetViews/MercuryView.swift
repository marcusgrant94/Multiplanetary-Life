//
//  MercuryView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct MercuryView: View {
//    @StateObject var purchaseManager = PurchaseManager()
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
                VStack() {
                    Image("MercuryHome")
                        .resizable()
                        .scaledToFit()
                    Text("Mercury")
                        .font(.title).bold()
                        .frame(maxWidth: .infinity, maxHeight: 10, alignment: .leading)
                        .padding()
                    HStack(spacing: 1) {
                        Image("DFS")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 30)
                        Text("182,000,000 km")
                            .font(.headline)
                        
                        Image("DFE")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 30)
                        Text("62,000,000 km")
                            .font(.headline)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
                    
                    
                    TabView {
                        MercuryDescriptionList[0]
                        MercuryDescriptionList[1]
                        MercuryDescriptionList[2]
                        MercuryDescriptionList[3]
            
                    }
                    .frame(maxWidth: 400, maxHeight: 200, alignment: .top)
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .indexViewStyle(.page(backgroundDisplayMode: .interactive))
    //                Text(planet.description)
    //                    .padding()
    //                    .frame(maxWidth: 400, maxHeight: 200, alignment: .top)
                    
                    
                    HStack {
                    NavigationLink(destination: QuizView(gameManagerVM: GameManagerVM()), label: {
                            Text("Take The Quiz")
                                .frame(width: 150, height: 60, alignment: .center)
                                .foregroundColor(.white)
                                .background(Color.teal)
                                .buttonStyle(.bordered)
                                .cornerRadius(10)
                    })
                    
                        
                        NavigationLink(destination: InfoMercury(), label: {
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



struct MercuryView_Previews: PreviewProvider {
    static var previews: some View {
        MercuryView()
            .environmentObject(PurchaseManager())
    }
}
