//
//  InfoJupiter.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct InfoJupiter: View {
    
    var body: some View {
            ZStack {
                Image("JupiterInfo")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                        Text("Jupiter is the largest planet in the Solar System")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                            .padding()
                            .padding(.horizontal)
                            .font(.title.bold())
                            .padding()
                        
                   
                    VStack {
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 20)
                        HStack {
                            Text("Jupiter is the fifth \nplanet from the Sun")
                                .padding(.horizontal)
                                .frame(maxWidth: 300, alignment: .leading)
                                .foregroundColor(.white)
                            NavigationLink(destination: JupiterVisitView(), label: {
                                Text("Visit ->")
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                            })
                                

                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    VStack(spacing: 5) {
                        Text("Closeup photo taken\nof Jupiter")
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: 370, alignment: .topLeading)
                            .padding(.horizontal)
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: 375, alignment: .topLeading)
                            .padding(.horizontal)
                        HStack {
                            Text("Adjectives:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 250, alignment: .topLeading)
                                .padding(.horizontal, 30)
                            Text("Jovian")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: 375, alignment: .top)
                            .padding(.horizontal)
                        HStack {
                            Text("Aphelion:")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.horizontal, 30)
                            Text("816.363 km²")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 29)
                        HStack {
                            Text("Eccentricity:")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.horizontal, 30)
                            Text("0.048775")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: .infinity, alignment: .top)
                            .padding(.horizontal, 29)
                        
                        HStack {
                            Text("Inclination:")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.horizontal, 30)
                            Text("1.30° to ecliptic")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                        }
                        Group {
                            Color.white.frame(height: 2 / UIScreen.main.scale)
                                .padding(.horizontal, 29)
                            HStack {
                                Text("Longitude:")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .topLeading)
                                    .padding(.horizontal, 30)
                                Text("26.9342°")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .topLeading)
                            }
                            Color.white.frame(height: 2 / UIScreen.main.scale)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                .padding(.horizontal, 29)
                        }
                    }
                    
                
            }
            
        }
    }
}



struct InfoJupiter_Previews: PreviewProvider {
    static var previews: some View {
        InfoJupiter()
    }
}
