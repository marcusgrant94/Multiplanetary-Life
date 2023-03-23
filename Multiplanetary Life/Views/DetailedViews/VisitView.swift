//
//  VisitView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct VisitView: View {
    var body: some View {
        ZStack {
            Image("marsbackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Text("Physical characteristics - Mars")
                        .foregroundColor(.white)
                        .frame(maxWidth: 240, alignment: .topLeading)
                        .font(.caption)
                    Text(" Mean radius \n Equatorial radius")
                        .foregroundColor(.white)
                }
                Text("Designations")
                    .frame(maxWidth: 370, alignment: .topLeading)
                    .foregroundColor(.white)
                
                Text("Flattening \nSurface Area")
                    .foregroundColor(.white)
                    .frame(maxWidth: 320, alignment: .topTrailing)
                
                Text("Axial tilt: 25.19° to its orbital plane \nMean density: 3.9335 g/cm³ \nMass 6.4171x1023 kg")
                    .foregroundColor(.white)
                    .font(.caption2)
                    .frame(maxWidth: 370, alignment: .topLeading)
                    .foregroundColor(.white)
                
                Text("Volume \nMass")
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
                    Text("5.027 km/s")
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
                    
                    Text("Mars is approximately half the diameter \nof Earth, with a surface area only slightly \nless than the total area of Earth's dry land.")
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
                            Link("Google Mars", destination: URL(string: "https://earth.google.com/web/")!)
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
    
    
    
    struct VisitView_Previews: PreviewProvider {
        static var previews: some View {
            VisitView()
        }
    }
}
