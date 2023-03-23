//
//  PlanetCard.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct PlanetCard: View {
    
    var planet: Planet
    
    var body: some View {
            VStack {
                Image(planet.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 103)
                    .cornerRadius(20)
                Text(planet.name)
                    .foregroundColor(.black)
            }
}
}
struct PlanetCard_Previews: PreviewProvider {
    static var previews: some View {
        PlanetCard(planet: PlanetList[0])
    }
}
