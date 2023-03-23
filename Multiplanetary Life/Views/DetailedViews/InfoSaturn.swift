//
//  InfoSaturn.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct InfoSaturn: View {
    
    var body: some View {
            ZStack {
                Image("SaturnInfo")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    HStack {
                        Text("Saturn has the most visible rings in the Solar System")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                            .padding()
                            .padding(.horizontal)
                            .font(.title.bold())
                            .padding()
                        
                    }
                   
                    VStack {
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 30)
                        HStack {
                            Text("Saturn is the Sixth \nplanet from the Sun")
                                .padding(.horizontal)
                                .frame(maxWidth: 300, alignment: .leading)
                                .foregroundColor(.white)
                            NavigationLink(destination: SaturnVisitView(), label: {
                                Text("Visit ->")
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                            })
                                

                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    VStack(spacing: 5) {
                        Text("CGI photo taken of Saturn \nfrom Saturn's moon Titan")
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: 325, alignment: .topLeading)
                            .padding(.horizontal)
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: 375, alignment: .topLeading)
                            .padding(.horizontal, 48)
                        HStack {
                            Text("Adjectives:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 250, alignment: .topLeading)
                                .padding(.horizontal, 50)
                            Text("Saturnian")
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
                                .padding(.horizontal, 50)
                            Text("1,506.527 km²")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 48)
                        HStack {
                            Text("Eccentricity:")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.horizontal, 50)
                            Text("0.0565")
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
                                .padding(.horizontal, 50)
                            Text("26.73° to ecliptic")
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
                                    .padding(.horizontal, 50)
                                Text("113.665°")
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

struct InfoSaturn_Previews: PreviewProvider {
    static var previews: some View {
        InfoSaturn()
    }
}
