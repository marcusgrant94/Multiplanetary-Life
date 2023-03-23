//
//  RocketView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct RocketView: View {
   
    var rocket: Rocket
    var body: some View {
        NavigationView {
            HStack(spacing: 1) {
                Image(rocket.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 130, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.horizontal)
                    
                    VStack {
                        Text(rocket.name)
                            .frame(maxWidth: .infinity, maxHeight: 30, alignment: .topLeading)
                            .font(.title.bold())
                        
                        Text(rocket.company)
                            .frame(width: 220, height: 9, alignment: .topLeading)
                            .font(.title3)
                        
                        Image(rocket.image2)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150, alignment: .leading)
                            .padding(.vertical, 5)
                        
                        Text(rocket.description)
                            .frame(width: 200, height: 199, alignment: .topLeading)
                            .font(.title3)
                        
                        VStack(spacing: 1) {
                            Text("First Launched:")
                                .frame(width: 150, alignment: .topLeading)
                                .font(.headline)
                            Text(rocket.firstFlight)
                                .frame(width: 150, height: 70,  alignment: .topLeading)
                            
                            Text("Last Launched:")
                                .frame(width: 150, alignment: .topLeading)
                                .font(.headline)
                            Text(rocket.lastFlight)
                                .frame(width: 150, height: 70, alignment: .topLeading)
                            
                            Image(rocket.image3)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 1, alignment: .leading)
                        }
                        Spacer()
                    }
                }
            }
        }
    }

struct RocketView_Previews: PreviewProvider {
    static var previews: some View {
        RocketView(rocket: RocketList[0])
    }
}
