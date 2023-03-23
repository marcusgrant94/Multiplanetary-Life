//
//  InfoVenus.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct InfoVenus: View {
    
    var body: some View {
            ZStack {
                Image("VenusInfo")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    HStack {
                        Text("Venus is the hottest planet in the Solar System")
                            .foregroundColor(.white)
                            .frame(maxWidth: 300, maxHeight: .infinity, alignment: .topLeading)
                            .padding()
                            .padding(.horizontal)
                            .font(.title.bold())
                            .padding()
                        
                    }
                   
                    VStack {
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 90)
                        HStack {
                            Text("Venus temperature\naverages 900°F")
                                .padding(.horizontal)
                                .frame(maxWidth: 290, alignment: .leading)
                                .foregroundColor(.white)
                            NavigationLink(destination: VenusVisitView(), label: {
                                Text("Visit ->")
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                            })
                                

                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    VStack(spacing: 5) {
                        Text("Venus seen by the Soviet\nUnion's probe Venera 7")
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: 370, alignment: .leading)
                            .padding(.horizontal)
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(alignment: .topLeading)
                            .padding(.horizontal, 90)
                        HStack {
                            Text("Adjectives:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 230, alignment: .topLeading)
                                .padding(.horizontal)
                            Text("Venusian")
                                .foregroundColor(.white)
                                .frame(maxWidth: 135, alignment: .topLeading)
                            
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: .infinity, alignment: .top)
                            .padding(.horizontal, 90)
                        HStack {
                            Text("Aphelion:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 230, alignment: .topLeading)
                                .padding(.horizontal)
                            Text("108,000,000 km")
                                .foregroundColor(.white)
                                .frame(maxWidth: 135, alignment: .topLeading)
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 90)
                        HStack {
                            Text("Eccentricity:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 230, alignment: .topLeading)
                                .padding(.horizontal)
                            Text("0.07")
                                .foregroundColor(.white)
                                .frame(maxWidth: 135, alignment: .topLeading)
                        }
                        Color.white.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: .infinity, alignment: .top)
                            .padding(.horizontal, 90)
                        
                        HStack {
                            Text("Inclination:")
                                .foregroundColor(.white)
                                .frame(maxWidth: 230, alignment: .topLeading)
                                .padding(.horizontal)
                            Text("3.4°")
                                .foregroundColor(.white)
                                .frame(maxWidth: 135, alignment: .topLeading)
                        }
                        Group {
                            Color.white.frame(height: 2 / UIScreen.main.scale)
                                .padding(.horizontal, 90)
                            HStack {
                                Text("Longitude:")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: 230, alignment: .topLeading)
                                    .padding(.horizontal)
                                Text("76.680°")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: 135, alignment: .topLeading)
                            }
                            Color.white.frame(height: 2 / UIScreen.main.scale)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                .padding(.horizontal, 90)
                        }
                    }
                    
                }
                
            }
            
    }
}

struct InfoVenus_Previews: PreviewProvider {
    static var previews: some View {
        InfoVenus()
    }
}
