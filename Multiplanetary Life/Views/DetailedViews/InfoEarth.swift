//
//  InfoEarth.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct InfoEarth: View {
    
    var body: some View {
            ZStack {
                Image("EarthInfo")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    HStack {
                        Text("Earth is the densest planet in the Solar System")
                            .foregroundColor(.white)
                            .frame(maxWidth: 300, maxHeight: .infinity, alignment: .topLeading)
                            .padding()
                            .padding(.horizontal)
                            .font(.title.bold())
                            .padding()
                        
                    }
                   
                    VStack {
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 20)
                        HStack {
                            Text("Of the four rocky planets,\nEarth is the largest and most massive")
                                .padding(.horizontal)
                                .frame(maxWidth: 290, alignment: .leading)
                                .foregroundColor(.white)
                            NavigationLink(destination: EarthVisitView(), label: {
                                Text("Visit ->")
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                            })
                                

                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    VStack(spacing: 5) {
                        Text("Earth's sky taken by\niPhone 14 pro camera")
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: 370, alignment: .leading)
                            .padding(.horizontal)
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(alignment: .topLeading)
                            .padding(.horizontal, 20)
                        HStack {
                            Text("Adjectives:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 230, alignment: .topLeading)
                                .padding(.horizontal)
                            Text("Earthly")
                                .foregroundColor(.white)
                                .frame(maxWidth: 135, alignment: .topLeading)
                            
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: .infinity, alignment: .top)
                            .padding(.horizontal, 20)
                        HStack {
                            Text("Aphelion:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 230, alignment: .topLeading)
                                .padding(.horizontal)
                            Text("152,097,701 km")
                                .foregroundColor(.white)
                                .frame(maxWidth: 135, alignment: .topLeading)
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 20)
                        HStack {
                            Text("Eccentricity:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 230, alignment: .topLeading)
                                .padding(.horizontal)
                            Text("0.01671")
                                .foregroundColor(.white)
                                .frame(maxWidth: 135, alignment: .topLeading)
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: .infinity, alignment: .top)
                            .padding(.horizontal, 20)
                        
                        HStack {
                            Text("Inclination:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 230, alignment: .topLeading)
                                .padding(.horizontal)
                            Text("23.5°")
                                .foregroundColor(.white)
                                .frame(maxWidth: 135, alignment: .topLeading)
                        }
                        Group {
                            Color.white.frame(height: 2 / UIScreen.main.scale)
                                .padding(.horizontal, 20)
                            HStack {
                                Text("Longitude:")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: 230, alignment: .topLeading)
                                    .padding(.horizontal)
                                Text("0°")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: 135, alignment: .topLeading)
                            }
                            Color.white.frame(height: 2 / UIScreen.main.scale)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                .padding(.horizontal, 20)
                        }
                    }
                    
                }
                
            
        }
    }
}

struct InfoEarth_Previews: PreviewProvider {
    static var previews: some View {
        InfoEarth()
    }
}
