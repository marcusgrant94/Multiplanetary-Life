//
//  EarthVisitView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct EarthVisitView: View {
    var body: some View {
        ZStack {
            Image("Earthviewbackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Text("Physical characteristics - Earth")
                        .foregroundColor(.white)
                        .frame(maxWidth: 271, alignment: .topLeading)
                        .font(.caption)
                    Text("Home Planet")
                        .foregroundColor(.white)
                }
                Text("Designations")
                    .frame(maxWidth: 370, alignment: .topLeading)
                    .foregroundColor(.white)
                
                Text("Liquid Water")
                    .foregroundColor(.white)
                    .frame(maxWidth: 380, alignment: .topTrailing)
                
                Text("Axial tilt: 23.5°\nMean density: 5.51 g/cm³ \nMass: 5.972 × 10^24 kg")
                    .foregroundColor(.white)
                    .font(.caption2)
                    .frame(maxWidth: 370, alignment: .topLeading)
                    .foregroundColor(.white)
                
                Text("4.6 Billion years old")
                    .foregroundColor(.white)
                    .frame(maxWidth: 385, maxHeight: .infinity, alignment: .topTrailing)
                    .padding(.vertical)
                
                
                
                
                Color.white.frame(height: 2 / UIScreen.main.scale)
                    .padding(.horizontal)
                    .frame(maxWidth: 389, alignment: .top)
                HStack {
                    Text("Escape Velocity")
                        .foregroundColor(.white)
                        .frame(maxWidth: 124, alignment: .topLeading)
                        .padding(4)
                    Text("11.186 km/s")
                        .foregroundColor(.white)
                }
                Color.white.frame(height: 2 / UIScreen.main.scale)
                    .padding(.horizontal)
                    .frame(maxWidth: 389, maxHeight: .infinity, alignment: .top)
                Group {
                    Color.white.frame(height: 2 / UIScreen.main.scale)
                        .padding(.horizontal)
                        .frame(maxWidth: 389, alignment: .top)
                    Text("Physical Characteristics - Continued")
                        .foregroundColor(.white)
                        .font(.caption).bold()
                        .frame(maxWidth: 360, alignment: .leading)
                    
                    Text("Earth is the largest terrestrial planet.")
                        .foregroundColor(.white)
                        .frame(maxWidth: 360, alignment: .leading)
                        .font(.caption)
                    
                    Color.white.frame(height: 2 / UIScreen.main.scale)
                        .padding(.horizontal)
                        .frame(maxWidth: 389, maxHeight: .infinity, alignment: .top)
                }
                
                Group {
                    Color.white.frame(height: 2 / UIScreen.main.scale)
                        .padding(.horizontal)
                        .frame(maxWidth: 389)
                    HStack {
                        Text("External links:")
                            .foregroundColor(.white)
                            .frame(maxWidth: 185, alignment: .leading)
                            .padding(4)
                        HStack {
                            Link("Google Earth", destination: URL(string: "https://earth.google.com/web/")!)
                                .foregroundColor(.white)
                            Image(systemName: "link")
                                .foregroundColor(.white)
                        }
                    }
                    Color.white.frame(height: 2 / UIScreen.main.scale)
                        .padding(.horizontal)
                        .frame(maxWidth: 389, maxHeight: 50, alignment: .top)
                }
            }
        }
    }
    
    struct EarthVisitView_Previews: PreviewProvider {
        static var previews: some View {
            EarthVisitView()
        }
    }
}
