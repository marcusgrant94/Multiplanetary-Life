//
//  Curiosity.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct Curiosity: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Curiositypic")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, alignment: .top)
                
                Text("About")
                    .fontWeight(.bold)
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                Text("The Atlas V rocket launched Curiosity November 26th, 2011 to search for evidence that the planet could once have supported Earth-like life. It found that its landing site, Gale Crater, once had a calm lake that could have supported life.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                
                
                VStack(spacing: 5) {
                    Color.black.frame(height: 2 / UIScreen.main.scale)
                        .frame(maxWidth: 338, alignment: .topLeading)
                        .padding(.horizontal)
                    HStack {
                        Text("Active as of:")
                            .foregroundColor(.black)
                            .frame(maxWidth: 250, alignment: .topLeading)
                            .padding(.horizontal, 30)
                        Text("Currently Active")
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                        
                    }
                    Color.black.frame(height: 2 / UIScreen.main.scale)
                        .frame(maxWidth: 338, alignment: .top)
                        .padding(.horizontal)
                    HStack {
                        Text("Cost to launch:")
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                            .padding(.horizontal, 30)
                        Text("$2,000,000,000")
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    Color.black.frame(height: 2 / UIScreen.main.scale)
                        .padding(.horizontal, 29)
                    HStack {
                        Text("Active Time:")
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                            .padding(.horizontal, 30)
                        Text("10 Years, 11 months")
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    Color.black.frame(height: 2 / UIScreen.main.scale)
                        .frame(maxWidth: .infinity, alignment: .top)
                        .padding(.horizontal, 29)
                    
                    HStack {
                        Text("Main Job:")
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                            .padding(.horizontal, 30)
                        Text("Seek signs of life")
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    Group {
                        Color.black.frame(height: 2 / UIScreen.main.scale)
                            .padding(.horizontal, 29)
                        HStack {
                            Text("Launch location:")
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .padding(.horizontal, 30)
                            Text("Cape Canaveral, FL")
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                        }
                        Color.black.frame(height: 2 / UIScreen.main.scale)
                            .frame(maxWidth: .infinity, alignment: .top)
                            .padding(.horizontal, 29)
                        
                        
                        
                        
                        
                    }
                }
            }
            .navigationTitle("Curiosity")
        }
        .onAppear {
            AppReviewRequest.requestReviewIfNeeded()
        }
    }
}

struct Curiosity_Previews: PreviewProvider {
    static var previews: some View {
        Curiosity()
    }
}
