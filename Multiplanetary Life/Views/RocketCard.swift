//
//  RocketCard.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct RocketCard: View {
    var rocketHome: rocketHome
    var body: some View {
        VStack {
            VStack {
                Image(rocketHome.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .cornerRadius(20)
                Text(rocketHome.name)
                    .foregroundColor(.black)
            }
        }
    }
}

struct RocketCard_Previews: PreviewProvider {
    static var previews: some View {
        RocketCard(rocketHome: RocketHomeList[0])
    }
}
