//
//  FalconHeavy.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct FalconHeavy: View {
   
    var body: some View {
        NavigationView {
            HStack(spacing: 1) {
                Image("falconheavy")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 130, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.horizontal)
                    
                    VStack {
                        Text("Falcon Heavy")
                            .frame(maxWidth: .infinity, maxHeight: 30, alignment: .topLeading)
                            .font(.title.bold())
                        
                        Text("SpaceX")
                            .frame(width: 220, height: 9, alignment: .topLeading)
                            .font(.title3)
                        
                        Image("americanflag")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150, alignment: .leading)
                           
                        
                        
                        TabView {
                            FalconHeavyList[0]
                            FalconHeavyList[1]
                            FalconHeavyList[2]
                            FalconHeavyList[3]
                            FalconHeavyList[4]
                            FalconHeavyList[5]
                            FalconHeavyList[6]
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        .tabViewStyle(.page(indexDisplayMode: .always))
                        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                        
                        VStack(spacing: 1) {
                            Text("First Launched:")
                                .frame(width: 150, alignment: .topLeading)
                                .font(.title3).bold()
                            Text(" February 6, 2018")
                                .frame(width: 150, height: 70,  alignment: .topLeading)
                            
                            Text("Last Launched:")
                                .frame(width: 150, alignment: .topLeading)
                                .font(.title3).bold()
                            Text("Still Active")
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
        }
    }

struct FalconHeavy_Previews: PreviewProvider {
    static var previews: some View {
        FalconHeavy()
    }
}
