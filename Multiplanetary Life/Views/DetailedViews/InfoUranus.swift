//
//  InfoUranus.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct InfoUranus: View {
    
    var body: some View {
            ZStack {
                Image("UranusInfo")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    HStack {
                        Text("Uranus has a axial tilt of almost 90°")
                            .foregroundColor(.white)
                            .frame(maxWidth: 250, maxHeight: .infinity, alignment: .topLeading)
                            .padding()
                            .padding(.horizontal)
                            .font(.title.bold())
                            .padding()
                        
                    }
                   
                    VStack {
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 48)
                        HStack {
                            Text("Uranus is the Seventh \nplanet from the Sun")
                                .padding(.horizontal)
                                .frame(maxWidth: 300, alignment: .leading)
                                .foregroundColor(.white)
                            NavigationLink(destination: UranusVisitView(), label: {
                                Text("Visit ->")
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                            })
                                

                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    VStack(spacing: 5) {
                        Text("CGI photo taken from \nthe clouds of Uranus")
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: 378, alignment: .topLeading)
                            .padding(.horizontal)
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: 375, alignment: .topLeading)
                            .padding(.horizontal, 48)
                        HStack {
                            Text("Adjectives:")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.horizontal, 70)
                            Text("Uranian")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: 370, alignment: .top)
                            .padding(.horizontal, 48)
                        HStack {
                            Text("Aphelion:")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.horizontal, 70)
                            Text("3,000,000 km")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 48)
                        HStack {
                            Text("Eccentricity:")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.horizontal, 65)
                            Text("0.0472")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: .infinity, alignment: .top)
                            .padding(.horizontal, 48)
                        
                        HStack {
                            Text("Inclination:")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.horizontal, 70)
                            Text("0.77° to ecliptic")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                        }
                        Group {
                            Color.white.frame(height: 2 / UIScreen.main.scale)
                                .padding(.horizontal, 48)
                            HStack {
                                Text("Longitude:")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .topLeading)
                                    .padding(.horizontal, 70)
                                Text("74.006°")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .topLeading)
                            }
                            Color.white.frame(height: 2 / UIScreen.main.scale)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                .padding(.horizontal, 48)
                        }
                    }
                    
                
            }
            
        }
    }
}

struct InfoUranus_Previews: PreviewProvider {
    static var previews: some View {
        InfoUranus()
    }
}
