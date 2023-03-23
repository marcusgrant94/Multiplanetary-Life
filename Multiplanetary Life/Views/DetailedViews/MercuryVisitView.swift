//
//  MercuryVisitView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct MercuryVisitView: View {
    var body: some View {
        ZStack {
            Image("MercuryViewBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Text("Physical characteristics - Mercury")
                        .foregroundColor(.white)
                        .frame(maxWidth: 240, alignment: .topLeading)
                        .font(.caption)
                    Text("  Smallest Planet")
                        .foregroundColor(.white)
                }
                Text("Designations")
                    .frame(maxWidth: 370, alignment: .topLeading)
                    .foregroundColor(.white)
                
                Text("Fastest Planet")
                    .foregroundColor(.white)
                    .frame(maxWidth: 320, alignment: .topTrailing)
                
                Text("Axial tilt is nonexistant\nMean density: 5.43 g/cm³ \nMass: 3.285 × 10^23 kg")
                    .foregroundColor(.white)
                    .font(.caption2)
                    .frame(maxWidth: 370, alignment: .topLeading)
                    .foregroundColor(.white)
                
                Text("Moonless")
                    .foregroundColor(.white)
                    .frame(maxWidth: 250, maxHeight: .infinity, alignment: .topTrailing)
                    .padding(.vertical)
                
                
                
                
                Color.white.frame(height: 2 / UIScreen.main.scale)
                    .padding(.horizontal)
                    .frame(maxWidth: 389, alignment: .top)
                HStack {
                    Text("Escape Velocity")
                        .foregroundColor(.white)
                        .frame(maxWidth: 124, alignment: .topLeading)
                        .padding(4)
                    Text("4.3 km/s")
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
                    
                    Text("Mercury's outer shell, comparable to\n Earth's outer shell is only about 400\n kilometers thick.")
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
                            Link("NASA Mercury", destination: URL(string: "https://solarsystem.nasa.gov/planets/mercury/overview/")!)
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
    
    struct MercuryVisitView_Previews: PreviewProvider {
        static var previews: some View {
            MercuryVisitView()
        }
    }
}
