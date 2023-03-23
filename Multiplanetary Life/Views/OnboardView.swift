//
//  OnboardView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct OnboardView: View {
    let systemImageName: String
    let title: String
    let description: String
    let title2 = "Multiplanetary"
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: systemImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.white)
            
            Text(title)
                .font(.title).bold()
            
            Text(description)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
        }
        .padding(.horizontal, 40)
        
    }
}

struct OnBoardView3: View {
    let image: String
    let title: String
    let description: String
    let description2: String
    
    var body: some View {
        VStack(spacing: 20) {
            Image("AppLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180)
                .foregroundColor(.white)
            
            Text(title)
                .font(.title).bold()
            
            Text(description)
                .font(.title3)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
            
            
            Text(description2)
                .font(.subheadline)
                .foregroundColor(.black)
        }
        .padding(.horizontal, 40)
        
    }
}

struct PlanetDescription: View {
    let systemImageName1: String
    let title1: String
    let description1: String
    
    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 1) {
                
                Text(title1)
                    .font(.title2).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                            Image(systemName: systemImageName1)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 19)
                                .foregroundColor(.black)
                
              
            }
            
            Text(description1)
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
        }
        .padding(.horizontal, 40)
    }
}

struct MoonDescription: View {
    let systemImageName1: String
    let title1: String
    let description1: String
    
    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 1) {
                
                Text(title1)
                    .font(.title2).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: systemImageName1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 19)
                    .foregroundColor(.black)
                
                
            }
            
            Text(description1)
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
        }
        .padding(.horizontal, 40)
    }
}

struct RocketDescription: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                
                Text(title)
                    .font(.title2).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
              
            }
            
            Text(description)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                .foregroundColor(.black)
        }
        .padding(.horizontal, 40)
    }
}



var MercuryDescriptionList = [PlanetDescription(systemImageName1: "book", title1: "About", description1: "Mercury is the closest planet from the Sun and also the smallest planet in our Solar System. Although Mercury is the closest planet to the sun, this does not mean it is the hottest. Venus is the hottest, while Mercury is the second hottest"),

PlanetDescription(systemImageName1: "thermometer.medium", title1: "Temperature", description1: "The average surface tamperature of Mercury is about 354°F. Nighttime temperature gets to about -330°F while daytime can get up to 800 degrees F."),
PlanetDescription(systemImageName1: "carbon.dioxide.cloud", title1: "Atmosphere", description1: "Mercury has a very thin and non protective atmosphere. This is why there are so many large craters on Mercury's surface. The atmosphere is mostly composed of hydrogen and sodium."),
PlanetDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "Mercury is impossible to colonize because of its small size and thin unprotective atmosphere, and extreme heat.")

]

var VenusDescriptionList = [PlanetDescription(systemImageName1: "book", title1: "About", description1: "Venus is the second planet from the sun, and also the hottest planet, averaging about 900°. Venus has a greenhouse effect. Venus atmosphere is so thick that it traps the heat inside of the planet."),

                            PlanetDescription(systemImageName1: "thermometer.high", title1: "Temperature", description1: "Venus averages about 900°F. There has only been one rover that has landed successfully on the surface of Venus and that was the Soviet Union's Venera probes in 1982, and only lasted about 50 minitues before it was destroyed due to the extreme heat. "),
                            
                            PlanetDescription(systemImageName1: "carbon.dioxide.cloud", title1: "Atmosphere", description1: "Venus has a very thick poisonous atmosphere that makes it impossible for humans to survive."),
                            PlanetDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "We can not colonize Venus due to its extreame surface temperature and it's carbon dioxide atmosphere.")
]

var EarthDescriptionList = [PlanetDescription(systemImageName1: "book", title1: "About", description1: "Earth is the third planet from the sun and our home planet. Earth is the only known planet in our Solar System to harbor life. The Earth is about 4.8 billion years old. The Earth has one moon, and no rings."),
PlanetDescription(systemImageName1: "thermometer.medium", title1: "Temperature", description1: "The average temperature on Earth is aboit 57°F which is perfect weather to harbor life."),
                            
                            PlanetDescription(systemImageName1: "cloud", title1: "Atmosphere", description1: "The air in Earth's atmosphere is made up of approximately 78 percent nitrogen and 21 percent oxygen. Air also has small amounts of other gases, too, such as carbon dioxide, neon, and hydrogen."),
                            PlanetDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "Yes, The Earth is our home, everything about the Earth is perfect for human colonization.")
]

var MarsDescriptionList = [PlanetDescription(systemImageName1: "book", title1: "About", description1: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury. In the English language, Mars is named for the Roman god of war."),
PlanetDescription(systemImageName1: "thermometer.low", title1: "Temperature", description1: "Temperatures on Mars average about -81 degrees F. However, temperatures range from around -220 degrees F. in the wintertime at the poles, to +70 degrees F. over the lower latitudes in the summer."),
PlanetDescription(systemImageName1: "cloud", title1: "Atmosphere", description1: "It is primarily composed of carbon dioxide, molecular nitrogen, and argon. It also contains trace levels of water vapor, oxygen, carbon monoxide, hydrogen, and noble gases."),
PlanetDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "Colonization of Mars is possible because if its similarities to Earth with its atmosphere and size. If we find a way to heat Mars and to add more oxygen to the atmosphere, Mars can support human life.")
]

                           
var JupiterDescriptionList = [PlanetDescription(systemImageName1: "book", title1: "About", description1: "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined."),
PlanetDescription(systemImageName1: "thermometer.low", title1: "Temperature", description1: "It is estimated that the temperature of the cloud tops are about -280 degrees F. Overall, Jupiter's average temperature is -238 degrees F."),
PlanetDescription(systemImageName1: "cloud", title1: "Atmosphere", description1: "Jupiter's extremely dense and relatively dry atmosphere is composed of a mixture of hydrogen, helium and much smaller amounts of methane and ammonia."),
PlanetDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "It is impossible to colonize Juptier because of its extreame cold temperatures and its lack of a solid surface. We could possibly colonize one of Jupiter's moons as an alternative.")
]

var SaturnDescriptionList = [PlanetDescription(systemImageName1: "book", title1: "About", description1: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth."),
PlanetDescription(systemImageName1: "thermometer.low", title1: "Temperature", description1: "Saturn is considerably colder than Jupiter being further from the Sun, with an average temperature of about -285 degrees F."),
PlanetDescription(systemImageName1: "cloud", title1: "Atmosphere", description1: "Like the other gas giants, Saturn's surface to atmosphere interface is rather nebulous, and likely has a small, rocky core surrounded by a liquid and very thick atmosphere with hydrogen making up nearly all of the atmosphere."),
PlanetDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "Saturn is also impossible to colonize because if its extreme cold temperature and lack of a solid surface. Titan, one of Saturns moons could possibly be colonized due to its icy surface.")

]

var UranusDescriptionList = [PlanetDescription(systemImageName1: "book", title1: "About", description1: "Uranus is the seventh planet from the Sun. Uranus has the third-largest planetary radius and fourth-largest planetary mass in the Solar System."),
                             PlanetDescription(systemImageName1: "thermometer.low", title1: "Temperature", description1: "The coldest temperature found in Uranus' lower atmosphere so far is -371 degrees F., which rivals Neptune's frigid temperatures."),
                             PlanetDescription(systemImageName1: "cloud", title1: "Atmosphere", description1: "Uranus's atmosphere is similar to Jupiter's and Saturn's in its primary composition of hydrogen and helium, but it contains more ices such as water, ammonia, and methane."),
                             PlanetDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "Uranus's lack of a solid surface and extreme cold temperature makes it impossible to colonize. Uranus's 27 moons could possibly be colonized in the future.")
]


var NeptuneDescriptionList = [PlanetDescription(systemImageName1: "book", title1: "About", description1: "Neptune is the eighth planet from the Sun and the farthest known planet in the Solar System. It is the fourth-largest planet in the Solar System by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth."),
PlanetDescription(systemImageName1: "thermometer.low", title1: "Temperature", description1: "The average temperature on Neptune is a brutally cold -373 degrees F."),
PlanetDescription(systemImageName1: "cloud", title1: "Atmosphere", description1: "Neptune's thick atmosphere is mostly hydrogen, with smaller amounts of helium and methane. It is the absorption of red light by methane which gives Neptune its very blue coloration."),
PlanetDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "Neptune's extreme cold temperatures and its lack of a solid surface makes its impossible to colonize.")

]

var persevearanceList = [PlanetDescription(systemImageName1: "", title1: "Possible Life", description1: "Perseverance rover found biologically-interesting rocks in an ancient lake bed that could indicate microbial life existed on the red planet billions of years ago."),
PlanetDescription(systemImageName1: "", title1: "", description1: "")



]

var SaturnVList = [RocketDescription(title: "Engine Type", description: " Five F-1 single combustion chamber liquid propellant engines"),
                  RocketDescription(title: "About", description: "The Saturn V is an American super heavy rocket engineered by NASA."),
                  
                   RocketDescription(title: "Thrust", description: "The Saturn V has a total of 7.5 million pounds of thrust."),
                   RocketDescription(title: "Engine Fuel", description: "The Saturn V rocket used liquid hydrogen and liquid oxygen as fuel."),
                   RocketDescription(title: "Stages", description: "The Saturn V had three stages."),
                   RocketDescription(title: "Cost Per Launch", description: "The cost per launch is estimated to be around 1.3 billion US dollars."),
                   RocketDescription(title: "Achevements", description: "The Saturn V was used to conduct the legendary Apollo missions.")

]

var SpaceShuttleList = [RocketDescription(title: "About", description: "The Space Shuttle is a partially resuable low earth orbital spacecraft, and is now retired."),
                        RocketDescription(title: "Engine Type", description: "Three RS-25 staged combustion engines"),
                        RocketDescription(title: "Thrust", description: "Each Space Shuttle Main Engine produced a maximum thrust of 375,000 pounds."),
                        RocketDescription(title: "Engine Fuel", description: "The Space Shuttle Main Engine used liquid hydrogen and liquid oxygen as fuel."),
                        RocketDescription(title: "Stages", description: "Two main stages."),
                        RocketDescription(title: "Cost Per Launch", description: "The cost per launch was about 450 million dollars in the late 1990s."),
                        RocketDescription(title: "Achevements", description: "The space shuttle launched the Hubble Space Telescope.")

]

var FalconHeavyList = [RocketDescription(title: "About", description: "The Falcon Heavy is a American partially reusable heavy-lift rocket engineered by Space X."),
                       RocketDescription(title: "Engine Type", description: "Twenty-Seven liquid fueled Merlin Engines"),
                       RocketDescription(title: "Thrust", description: "Each Merlin engine on the Falcon Heavy generates approximately 190,000 pounds of thrust in a vacuum."),
                       RocketDescription(title: "Engine Fuel", description: "The Merlin engines on the Falcon Heavy use rocket-grade kerosene as fuel, and liquid oxygen as the oxidizer."),
                       RocketDescription(title: "Stages", description: "The Falcon Heavy has two stages. The first stage is composed of three Falcon 9 cores and the second stage is a single Falcon 9 upper stage."),
                       RocketDescription(title: "Cost Per Launch", description: "The cost per launch is estimated to be around $90 million."),
                       RocketDescription(title: "Achievements", description: "The Falcon Heavy launched the red Tesla Roadster and a dummy astronaut named Starman into orbit.")

]

var StarshipList = [RocketDescription(title: "About", description: "Starship is a fully resuable super heavy rocket currently under development by Space X."),
                    RocketDescription(title: "Engine Type", description: "Starship has thirty-two Raptor full-flow staged-combustion-cycle rocket engines"),
                    RocketDescription(title: "Thrust", description: "Each Raptor engine generates 440,000 pounds of thrust."),
                    RocketDescription(title: "Engine Fuel", description: "Starship uses liquid methane and oxygen."),
                    RocketDescription(title: "Stages", description: "Starship has two stages."),
                    RocketDescription(title: "Cost Per Launch", description: "The cost per launch of Starship has not been officially disclosed by the company."),
                    RocketDescription(title: "Achievements", description: "Starship is still in development and has no achevements.")

]

var SoyuzList = [RocketDescription(title: "About", description: "Soyuz was designed for the Soviet space program by the Korolev Design Bureau."),
                 RocketDescription(title: "Engine Type", description: "1 RD-108 Rocket Engine"),
                 RocketDescription(title: "Thrust", description: "Maximum thrust is about 219,000 pounds"),
                 RocketDescription(title: "Engine Fuel", description: "RP-1 and liquid oxygen propellant"),
                 RocketDescription(title: "Stages", description: "3"),
                 RocketDescription(title: "Cost Per Launch", description: "$80 million to $90 million USD"),
                 RocketDescription(title: "Achevements", description: "The Soyuz has taken many astronauts to the ISS when the United States did not have any usable rockets avaliable.")



]

var MoonList = [MoonDescription(systemImageName1: "book", title1: "About", description1: "The Moon is Earth's only natural satellite. It is the fifth largest satellite in the Solar System and the largest and most massive relative to its parent planet, with a diameter about one-quarter that of Earth."),
                MoonDescription(systemImageName1: "globe.asia.australia.fill", title1: "Size", description1: "The moon's mean radius is 1,079.6 miles and the mean diameter is 2,159.2 miles. Compared to Earth, the moon is less than a third the width of our home planet"),
                MoonDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "As of now, colonization of the moon is not possible due to its small size and non existant atmosphere. But NASA is in the prosses of establishing a moon base for research and development")
                


]

var GanymedeList = [MoonDescription(systemImageName1: "book", title1: "About", description1: "Ganymede, a satellite of Jupiter, is the largest and most massive of the Solar System's moons. The ninth-largest object of the Solar System, it is the largest without a substantial atmosphere"),
                    MoonDescription(systemImageName1: "globe.asia.australia.fill", title1: "Size", description1: "Ganymede has a radius of 1,635 miles and is the largest moon in our solar system. It's bigger than Mercury and Pluto"),
                    MoonDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "Ganymede is the only moon with a magnetosphere, albeit overshadowed by Jupiter's magnetic field. Because of this magnetic field, Ganymede is one of only two Jovian moons where surface settlements would be feasible")


]

var IoList = [MoonDescription(systemImageName1: "book", title1: "About", description1: "Io, or Jupiter I, is the innermost and third-largest of the four Galilean moons of the planet Jupiter"),
              MoonDescription(systemImageName1: "globe.asia.australia.fill", title1: "Size", description1: "The radius of Io is about 1,131.9 mi, making it only slightly larger than our Moon"),
              MoonDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "Io is not ideal for colonization, due to its hostile environment. The moon is under influence of high tidal forces, causing high volcanic activity")

]

var TitanList = [MoonDescription(systemImageName1: "book", title1: "About", description1: "Titan is the largest moon of Saturn and the second-largest natural satellite in the Solar System. It is the only moon known to have a dense atmosphere"),
                 MoonDescription(systemImageName1: "globe.asia.australia.fill", title1: "Size", description1: "Titan has a radius of about 1,600 miles (2,575 kilometers), and is nearly 50 percent wider than Earth's moon"),
                 MoonDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "Yes, Robert Zubrin has pointed out that Titan possesses an abundance of all the elements necessary to support life.")

]

var EuropaList = [MoonDescription(systemImageName1: "book", title1: "About", description1: "Europa, or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet of all the 92 known moons of Jupiter."),
                  MoonDescription(systemImageName1: "globe.asia.australia.fill", title1: "Size", description1: "With an equatorial diameter of 1,940 miles (3,100 kilometers), Europa is about 90 percent the size of Earth's Moon."),
                  MoonDescription(systemImageName1: "person.3", title1: "Colonization?", description1: "Europa's geophysical features, including a possible subglacial water ocean, make it a possibility that human life could be sustained on or beneath the surface")
]

var TritionList = [MoonDescription(systemImageName1: "book", title1: "About", description1: "Triton is the largest natural satellite of the planet Neptune, and was the first Neptunian moon to be discovered, on October 10, 1846, by English astronomer William Lassell"),
                   MoonDescription(systemImageName1: "globe.asia.australia.fill", title1: "Size", description1: "Triton has a diameter of 1,680 miles (2,700 kilometers). Spacecraft images show the moon has a sparsely cratered surface with smooth volcanic plains, mounds and round pits formed by icy lava flows"),
                   MoonDescription(systemImageName1: "person.3", title1: "Colonization?", description1: " If technology advanced to the point that tapping such geothermal energy was possible, it could make colonizing a cryogenic world like Triton feasible, supplemented by nuclear fusion power")



]



struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
//        OnBoardView3(image: "AppLogo", title: "Skethpad", description: "This is a test description")
        PlanetDescription(systemImageName1: "scribble.variable", title1: "Temp", description1: "Test")
//        RocketDescription(title: "About", description: "Test")
//        OnboardView(systemImageName: "scribble.variable", title: "test", description: "test")
    }
}
