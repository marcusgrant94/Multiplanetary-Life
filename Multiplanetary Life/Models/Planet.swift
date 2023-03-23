//
//  Planet.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import Foundation
import SwiftUI

struct Planet: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var distanceFromEarth: Int
    var distanceFromSun: Int
}

struct MoreInformation: Identifiable {
    var id = UUID()
    var size: String
    var image: String
    var image2: String
    var description: String
    var rocket: String
    var physics: String
    var atmosphere: String
    var colonize: String

}

struct Rocket: Identifiable {
    var id = UUID()
    var name: String
    var company: String
    var image: String
    var image2: String
    var image3: String
    var description: String
    var firstFlight: String
    var lastFlight: String
    var engineType: String
    var poundsOfThrust: String
    var engineFuel: String
    var stages: Int
    var costPerLaunch: String
}

struct rocketHome: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}



var PlanetList = [Planet(name: "Mercury", image: "MercuryHome", description: "Mercury is the closest planet from the Sun and also the smallest planet in our Solar System. Although Mercury is the closest planet to the sun, this does not mean it is the hottest. Venus is the hottest, while Mercury is the second hottest.", distanceFromEarth: 182, distanceFromSun: 60),
                  Planet(name: "Venus", image: "VenusHome", description: "Venus is the second closest planet from the sun and the hottest planet in our Solar System. It is also the brightest object in the sky besides the sun. Because of its greenhouse effect, it is impossible to send humans to the surface.", distanceFromEarth: 248, distanceFromSun: 108),
                  Planet(name: "Earth", image: "EarthHome", description: "Earth is our home planet, and the only known planet to harbor life. Earth is about 4.5 billion years old and the 3rd planet from the sun. About 71 percent of earth's surface is composed of water.", distanceFromEarth: 0, distanceFromSun: 147),
                  Planet(name: "Mars", image: "MarsHome", description: "Mars is the 4th planet from the sun, and the second smallest terrestral planet. Mars has the best chance to be colonized because of it's similarites to earth. SpaceX plans to send the first human to Mars in 2023 with Starship.", distanceFromEarth: 84, distanceFromSun: 231),
                  Planet(name: "Jupiter", image: "JupiterHome2", description: "Jupiter is the fifth planet from the sun and is located on the outer side of the asteroid belt. Is is the largest planet and is impossible to colonize due to its unhabitable atmosphere and its lack of a solid surface.", distanceFromEarth: 700, distanceFromSun: 740),
                  Planet(name: "Saturn", image: "SaturnHome", description: "Saturn is the sixth planet from the sun and the second largest planet in our solar system. Saturn is most known for its visible rings.", distanceFromEarth: 2, distanceFromSun: 1),
                  Planet(name: "Uranus", image: "UranusHome", description: "Uranus is the seventh planet from the sun. Uranus has a unique tilt. Its equator is nearly at a right angle to its orbit, causing some of the most extreme seasons in the solar system. This is likely due to a Earth-sized object colliding with Uranus.", distanceFromEarth: 3, distanceFromSun: 3),
                  Planet(name: "Neptune", image: "NeptuneHome2", description: "Neptune is the eighth and farthest planet from the sun. It is about 17 times the mass of Earth and is the densest gas giant planet. It has a unique dark spot that has been visible for a very long time. This is likely a storm that has been active for years.", distanceFromEarth: 3, distanceFromSun: 4),
]



var MoreInformationList = [MoreInformation(size: "Mercury is our smallest planet. The Radius of Mercury is 1,516 miles. Only slightly bigger than our moon.", image: "cartoonmercury", image2: "cartoonmercury2", description: "Although Mercury is the closest planet in our Solar System, it is not the hottest planet. It only takes Mercury 27 earth days to rotate around the sun. ", rocket: "There has been no crewed missions to Mercury because it is too close to the sun. But NASA has sent Mariner 10 to Mercury in 1973 and discovered many things about its non existent atmosphere.", physics: "", atmosphere: "Mariner 10 discovered that Mercury does not have an atmosphere during its flyby in 1973.", colonize: "We cannot colonize Mercury because Mercury is too small, too close to the sun, and it does not have an atmosphere."),
                           MoreInformation(size: "Venus is the biggest terrestral planet. Is is often refered to as the sister planet to earth because of the similar size.", image: "Test", image2: "Test", description: "test", rocket: "Test", physics: "Test", atmosphere: "Test", colonize: "Test"),
                           MoreInformation(size: "Test", image: "Test", image2: "Test", description: "test", rocket: "Test", physics: "Test", atmosphere: "Test", colonize: "Test"),
                           MoreInformation(size: "Test", image: "Test", image2: "Test", description: "test", rocket: "Test", physics: "Test", atmosphere: "Test", colonize: "Test"),
                           MoreInformation(size: "Test", image: "Test", image2: "Test", description: "test", rocket: "Test", physics: "Test", atmosphere: "Test", colonize: "Test"),
                           MoreInformation(size: "Test", image: "Test", image2: "Test", description: "test", rocket: "Test", physics: "Test", atmosphere: "Test", colonize: "Test"),
                           MoreInformation(size: "Test", image: "Test", image2: "Test", description: "test", rocket: "Test", physics: "Test", atmosphere: "Test", colonize: "Test"),
                           MoreInformation(size: "Test", image: "Test", image2: "Test", description: "test", rocket: "Test", physics: "Test", atmosphere: "Test", colonize: "Test"),

]

var RocketList = [Rocket(name: "Saturn V", company: "NASA", image: "saturnv", image2: "americanflag", image3: "nasalogo", description: "The Saturn V is an American super heavy rocket engineered by NASA. The Saturn V is known for launching the legendary Apollo missions", firstFlight: "November 9, 1967", lastFlight: "May 14, 1972", engineType: "F-1 single combustion chamber liquid propellant engine", poundsOfThrust: "1.5 million", engineFuel: "Liquid Hydogen", stages: 3, costPerLaunch: "$185,000,000"),
                  Rocket(name: "Space Shuttle", company: "NASA", image: "spaceshuttle1", image2: "americanflag", image3: "nasalogo", description: "The Space Shuttle is one of the most reconized rockets of space exploration history. It is a partially resuable low earth orbital spacecraft, and is now retired.", firstFlight: "April 12, 1981", lastFlight: "July 8, 2011", engineType: "RS-25 staged combustion engine", poundsOfThrust: "1.2 Million", engineFuel: "Liquid Hydrogen", stages: 2, costPerLaunch: "1.5 billion"),
                  Rocket(name: "Falcon Heavy", company: "Space X", image: "falconheavy", image2: "americanflag", image3: "spacexlogo", description: "The Falcon Heavy is a American partially reusable heavy-lift rocket engineered by Space X. The Falcon Heavy is responsable for taking astronauts to the ISS.", firstFlight: "Febuary 6, 2018", lastFlight: "Present", engineType: "Merlin engine", poundsOfThrust: "5 million", engineFuel: "liquid oxygen and rocket-grade kerosene", stages: 3, costPerLaunch: "$97,000,000"),
                  Rocket(name: "Starship", company: "Space X", image: "starship2", image2: "americanflag", image3: "spacexlogo", description: "Starship is a fully resuable super heavy rocket currently under development by Space X. Starship is currently the most powerful rocket ever engineered.", firstFlight: "To be Announced.", lastFlight: "To be Announced", engineType: "Raptor engine", poundsOfThrust: "17 million", engineFuel: "Liquid Methane", stages: 2, costPerLaunch: "$1,000,000"),
                  Rocket(name: "Soyuz", company: "Soviet Union", image: "soyuz2", image2: "russianflag", image3: "", description: "The Soyuz is a Russian made low earth otbital rocket. Soyuz has launched and docked astronauts to and from the ISS.", firstFlight: "November 28, 1966", lastFlight: "Present", engineType: "RD-107 four-chamber engine", poundsOfThrust: "223,500 thousand", engineFuel: "RP-1 and liquid oxygen", stages: 3, costPerLaunch: "$70,000,000"),
                  Rocket(name: "SLS", company: "NASA", image: "sls", image2: "americanflag", image3: "nasalogo", description: "The Space Launch System is an American super heavy rocket engineered by NASA. The SLS is responsible for restarting space exploration with the Artimis program.", firstFlight: "November 16, 2022", lastFlight: "Present", engineType: "RD-25 staged combustion engine", poundsOfThrust: "8.8 million", engineFuel: "Liquid Hydrogen", stages: 2, costPerLaunch: "$1,000,000,000"),
                  Rocket(name: "H-2B", company: "JAXA", image: "h2b", image2: "japanflag", image3: "jaxalogo", description: "H-2B was an expendable rocket developed by the Japanese government company JAXA. The H-2B was used to transfer cargo to and from the ISS.", firstFlight: "September 10. 2009", lastFlight: "May 20, 2020", engineType: "LE-7A", poundsOfThrust: "876,000", engineFuel: "Liquid Hydrogen", stages: 2, costPerLaunch: "Unknown")

]

var RocketHomeList = [rocketHome(name: "Saturn V", image: "saturnvhome"),
                      rocketHome(name: "Space Shuttle", image: "spaceshuttle"),
                      rocketHome(name: "Falcon Heavy", image: "falconheavy"),
                      rocketHome(name: "Starship", image: "starship"),
                      rocketHome(name: "Soyuz", image: "soyuz"),
                      rocketHome(name: "SLS", image: "sls"),
                      rocketHome(name: "H-2B", image: "h2b")

]
