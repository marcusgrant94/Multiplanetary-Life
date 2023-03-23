//
//  SaturnV.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct SaturnV: View {
   
    var body: some View {
        NavigationView {
            HStack(spacing: 1) {
                Image("saturnv")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 130, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.horizontal)
                    
                    VStack {
                        Text("Saturn V")
                            .frame(maxWidth: .infinity, maxHeight: 30, alignment: .topLeading)
                            .font(.title.bold())
                        
                        Text("NASA")
                            .frame(width: 220, height: 9, alignment: .topLeading)
                            .font(.title3)
                        
                        Image("americanflag")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150, alignment: .leading)
                           
                        
                        
                        TabView {
                            SaturnVList[1]
                            SaturnVList[0]
                            SaturnVList[2]
                            SaturnVList[3]
                            SaturnVList[4]
                            SaturnVList[5]
                            SaturnVList[6]
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        .tabViewStyle(.page(indexDisplayMode: .always))
                        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                        
                        VStack(spacing: 1) {
                            Text("First Launched:")
                                .frame(width: 150, alignment: .topLeading)
                                .font(.title3).bold()
                            Text("November 9, 1967")
                                .frame(width: 150, height: 70,  alignment: .topLeading)
                            
                            Text("Last Launched:")
                                .frame(width: 150, alignment: .topLeading)
                                .font(.title3).bold()
                            Text("May 14, 1972")
                                .frame(width: 150, height: 70, alignment: .topLeading)
                            
                            Image("nasalogo")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: 100, maxHeight: .infinity, alignment: .leading)
                        }
                        Spacer()
                    }
                }
            .onAppear {
                AppReviewRequest.requestReviewIfNeeded()
            }
            }
        }
    }
struct SaturnV_Previews: PreviewProvider {
    static var previews: some View {
        SaturnV()
    }
}
