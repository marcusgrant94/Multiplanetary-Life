//
//  VenusVisitView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct VenusVisitView: View {
    var body: some View {
        ZStack {
            Image("VenusViewBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Text("Physical characteristics - Venus")
                        .foregroundColor(.white)
                        .frame(maxWidth: 260, alignment: .topLeading)
                        .font(.caption)
                    Text("Hottest Planet")
                        .foregroundColor(.white)
                }
                Text("Designations")
                    .frame(maxWidth: 370, alignment: .topLeading)
                    .foregroundColor(.white)
                
                Text("Toxic atmosphere")
                    .foregroundColor(.white)
                    .frame(maxWidth: 380, alignment: .topTrailing)
                
                Text("Axial tilt: 3°\nMean density: 5.43 g/cm³ \nMass: 4.867 × 10^24 kg")
                    .foregroundColor(.white)
                    .font(.caption2)
                    .frame(maxWidth: 370, alignment: .topLeading)
                    .foregroundColor(.white)
                
                Text("Greenhouse effect")
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
                    Text("10.4 km/s")
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
                    
                    Text("Venus spins in the opposite direction\n of Earth and most other planets.")
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
                            Link("NASA Venus", destination: URL(string: "https://solarsystem.nasa.gov/planets/venus/overview/#:~:text=Venus%20was%20the%20first%20planet,the%20planet's%20surface%20with%20radar.")!)
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
    
    struct VenusVisitView_Previews: PreviewProvider {
        static var previews: some View {
            VenusVisitView()
        }
    }
}
