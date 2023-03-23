//
//  InfoNeptune.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct InfoNeptune: View {
    
    var body: some View {
            ZStack {
                Image("NeptuneInfo")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    HStack {
                        Text("Neptune is very dark, cold and windy")
                            .foregroundColor(.white)
                            .frame(maxWidth: 250, maxHeight: .infinity, alignment: .topLeading)
                            .padding()
                            .padding(.horizontal)
                            .font(.title.bold())
                            .padding()
                    
                    }
                   
                    VStack {
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 25)
                        HStack {
                            Text("Neptune is the last \nplanet from the Sun")
                                .padding(.horizontal)
                                .frame(maxWidth: 300, alignment: .leading)
                                .foregroundColor(.white)
                            NavigationLink(destination: NeptuneVisitView(), label: {
                                Text("Visit ->")
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                            })
                                

                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    VStack(spacing: 5) {
                        Text("")
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: 370, alignment: .topLeading)
                            .padding(.horizontal)
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: 375, alignment: .topLeading)
                            .padding(.horizontal, 50)
                        HStack {
                            Text("Adjectives:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 250, alignment: .topLeading)
                                .padding(.horizontal, 50)
                            Text("Neptunian")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: 370, alignment: .top)
                            .padding(.horizontal, 50)
                        HStack {
                            Text("Aphelion:")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.horizontal, 50)
                            Text("4,558.857 km")
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
                            Text("0.009")
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
                            Text("1.77° to ecliptic")
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
                                Text("131.783°")
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

struct InfoNeptune_Previews: PreviewProvider {
    static var previews: some View {
        InfoNeptune()
    }
}
