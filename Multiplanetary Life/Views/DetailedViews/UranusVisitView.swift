//
//  UranusVisitView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct UranusVisitView: View {
    var body: some View {
        ZStack {
            Image("Uranusviewbackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Text("Physical characteristics - Uranus")
                        .foregroundColor(.white)
                        .frame(maxWidth: 295, alignment: .topLeading)
                        .font(.caption)
                    Text("Gas Giant")
                        .foregroundColor(.white)
                }
                Text("Designations")
                    .frame(maxWidth: 370, alignment: .topLeading)
                    .foregroundColor(.white)
                
                Text("Almost titled 90°")
                    .foregroundColor(.white)
                    .frame(maxWidth: 380, alignment: .topTrailing)
                
                Text("Axial tilt: 98°\nMean density: 687 kg/m³ \nMass: 5.683 × 10^26 kg")
                    .foregroundColor(.white)
                    .font(.caption2)
                    .frame(maxWidth: 370, alignment: .topLeading)
                    .foregroundColor(.white)
                
                Text("900°F Core")
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
                    Text("21.38 km/s")
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
                    
                    Text("Uranus is made up of water, methance and ammonia.")
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
                            Link("NASA Uranus", destination: URL(string: "https://solarsystem.nasa.gov/planets/uranus/overview/")!)
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
    
    struct UranusVisitView_Previews: PreviewProvider {
        static var previews: some View {
            UranusVisitView()
        }
    }
}
