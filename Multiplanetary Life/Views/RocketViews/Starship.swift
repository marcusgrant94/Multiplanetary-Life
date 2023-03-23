//
//  Starship.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct Starship: View {
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        if purchaseManager.hasUnlockedPro {
            NavigationView {
                HStack(spacing: 1) {
                    Image("starship2")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                            .padding(.horizontal)
                        
                        VStack {
                            Text("Starship")
                                .frame(maxWidth: .infinity, maxHeight: 30, alignment: .topLeading)
                                .font(.title.bold())
                            
                            Text("SpaceX")
                                .frame(width: 190, height: 9, alignment: .topLeading)
                                .font(.title3)
                            
                            Image("americanflag")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150, alignment: .leading)
                               
                            
                            
                            TabView {
                                StarshipList[0]
                                StarshipList[1]
                                StarshipList[2]
                                StarshipList[3]
                                StarshipList[4]
                                StarshipList[5]
                                StarshipList[6]
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                            .tabViewStyle(.page(indexDisplayMode: .always))
                            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                            
                            VStack(spacing: 1) {
                                Text("First Launched:")
                                    .frame(width: 150, alignment: .topLeading)
                                    .font(.title3).bold()
                                Text("To be announced")
                                    .frame(width: 150, height: 70,  alignment: .topLeading)
                                
                                Text("Last Launched:")
                                    .frame(width: 150, alignment: .topLeading)
                                    .font(.title3).bold()
                                Text("To be announced")
                                    .frame(width: 150, height: 70, alignment: .topLeading)
                                
                                Image("spacexlogo")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(maxWidth: 150, maxHeight: 20, alignment: .leading)
                            }
                            Spacer()
                        }
                    }
                }
            .onAppear {
                AppReviewRequest.requestReviewIfNeeded()
            }
        } else {
            PaywallView()
        }
        
        }
    }

struct Starship_Previews: PreviewProvider {
    static var previews: some View {
        Starship().environmentObject(PurchaseManager())
    }
}
