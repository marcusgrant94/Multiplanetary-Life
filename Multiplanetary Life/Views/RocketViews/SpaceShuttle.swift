//
//  SpaceShuttle.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct SpaceShuttle: View {
   
    var body: some View {
        NavigationView {
            HStack(spacing: 1) {
                Image("spaceshuttle1")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 130, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.horizontal)
                    
                    VStack {
                        Text("Space Shuttle")
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
                            SpaceShuttleList[0]
                            SpaceShuttleList[1]
                            SpaceShuttleList[2]
                            SpaceShuttleList[3]
                            SpaceShuttleList[4]
                            SpaceShuttleList[5]
                            SpaceShuttleList[6]
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        .tabViewStyle(.page(indexDisplayMode: .always))
                        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                        
                        VStack(spacing: 1) {
                            Text("First Launched:")
                                .frame(width: 150, alignment: .topLeading)
                                .font(.title3).bold()
                            Text("April 12th, 1981")
                                .frame(width: 150, height: 70,  alignment: .topLeading)
                            
                            Text("Last Launched:")
                                .frame(width: 150, alignment: .topLeading)
                                .font(.title3).bold()
                            Text("July 8th, 2011")
                                .frame(width: 150, height: 70, alignment: .topLeading)
                            
                            Image("nasalogo")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: 100, maxHeight: .infinity, alignment: .leading)
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

struct SpaceShuttle_Previews: PreviewProvider {
    static var previews: some View {
        SpaceShuttle()
    }
}
