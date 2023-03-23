//
//  InfoMercury.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct InfoMercury: View {
    
    var body: some View {
            ZStack {
                Image("MercuryInfo")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    HStack {
                        Text("A day on Mercury takes 59 Earth days")
                            .foregroundColor(.white)
                            .frame(maxWidth: 290, maxHeight: .infinity, alignment: .topLeading)
                            .padding()
                            .padding(.horizontal)
                            .font(.title.bold())
                            .padding()
                    }
                   
                    VStack {
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 120)
                        HStack {
                            Text("Mercury is the first \nplanet from the Sun")
                                .padding(.horizontal)
                                .frame(maxWidth: 290, alignment: .leading)
                                .foregroundColor(.white)
                            NavigationLink(destination: MercuryVisitView(), label: {
                                Text("Visit ->")
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                            })
                                

                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    VStack(spacing: 5) {
                        Text("Mercury seen in true color \nby the probe Mariner 10")
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: 345, alignment: .leading)
                            .padding(.horizontal)
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(alignment: .topLeading)
                            .padding(.horizontal, 120)
                        HStack {
                            Text("Adjectives:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 230, alignment: .topLeading)
                                .padding(.horizontal)
                            Text("Mercurial")
                                .foregroundColor(.white)
                                .frame(maxWidth: 135, alignment: .topLeading)
                            
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: .infinity, alignment: .top)
                            .padding(.horizontal, 120)
                        HStack {
                            Text("Aphelion:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 230, alignment: .topLeading)
                                .padding(.horizontal)
                            Text("69,816,900 km")
                                .foregroundColor(.white)
                                .frame(maxWidth: 135, alignment: .topLeading)
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 120)
                        HStack {
                            Text("Eccentricity:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 230, alignment: .topLeading)
                                .padding(.horizontal)
                            Text("0.205630")
                                .foregroundColor(.white)
                                .frame(maxWidth: 135, alignment: .topLeading)
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: .infinity, alignment: .top)
                            .padding(.horizontal, 120)
                        
                        HStack {
                            Text("Inclination:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 230, alignment: .topLeading)
                                .padding(.horizontal)
                            Text("7.0°")
                                .foregroundColor(.white)
                                .frame(maxWidth: 135, alignment: .topLeading)
                        }
                        Group {
                            Color.white.frame(height: 2 / UIScreen.main.scale)
                                .padding(.horizontal, 120)
                            HStack {
                                Text("Longitude:")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: 230, alignment: .topLeading)
                                    .padding(.horizontal)
                                Text("48.331°")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: 135, alignment: .topLeading)
                            }
                            Color.white.frame(height: 2 / UIScreen.main.scale)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                .padding(.horizontal, 120)
                        }
                    }
                    
                }
                
            }
            
    }
}

struct InfoMercury_Previews: PreviewProvider {
    static var previews: some View {
        InfoMercury().environmentObject(PurchaseManager())
    }
}
