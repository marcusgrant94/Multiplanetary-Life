//
//  Soyuz.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/20/23.
//

import SwiftUI

struct Soyuz: View {
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        if purchaseManager.hasUnlockedPro {
            NavigationView {
                HStack(spacing: 1) {
                    Image("soyuz")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 130, maxHeight: .infinity, alignment: .topLeading)
                            .padding(.horizontal)
                        
                        VStack {
                            Text("Soyuz")
                                .frame(maxWidth: .infinity, maxHeight: 30, alignment: .topLeading)
                                .font(.title.bold())
                            
                            Text("Soviet Union")
                                .frame(width: 220, height: 9, alignment: .topLeading)
                                .font(.title3)
                                .offset(x: -5)
                            
                            Image("russianflag")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150, alignment: .leading)
                               
                            
                            
                            TabView {
                                SoyuzList[0]
                                SoyuzList[1]
                                SoyuzList[2]
                                SoyuzList[3]
                                SoyuzList[4]
                                SoyuzList[5]
                                SoyuzList[6]
                            }
                            .offset(y: -30)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                            .tabViewStyle(.page(indexDisplayMode: .always))
                            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                            
                            VStack(spacing: 1) {
                                Text("First Launched:")
                                    .offset(x: -9)
                                    .frame(width: 150, alignment: .topLeading)
                                    .font(.title3).bold()
                                Text(" November 28th, 1966")
                                    .frame(width: 175, height: 80,  alignment: .topLeading)
                                    .offset(y: 10)
                                
                                Text("Last Launched:")
                                    .frame(width: 150, alignment: .topLeading)
                                    .font(.title3).bold()
                                Text("Still Active")
                                    .offset(y: 10)
                                    .frame(width: 150, height: 70, alignment: .topLeading)
                                
                                Image("")
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

struct Soyuz_Previews: PreviewProvider {
    static var previews: some View {
        Soyuz().environmentObject(PurchaseManager())
    }
}
