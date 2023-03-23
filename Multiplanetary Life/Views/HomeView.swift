
//
//  HomeView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 12/6/22.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var vm = CloudKitUserAuthViewModel.shared
    @State var shouldShowOnboarding: Bool = true
    @State var isSidebarOpened = false
    var moreInfo: MoreInformation
    var body: some View {
        ZStack {
        NavigationView {
            VStack {
                Text("Planets")
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding()
                    .font(.title.bold())
                ScrollView(.horizontal) {
                    HStack {
                        NavigationLink(destination: MercuryView(), label: {
                            PlanetCard(planet: PlanetList[0])
                        })
                        NavigationLink(destination: VenusView(), label: {
                            PlanetCard(planet: PlanetList[1])
                        })
                        NavigationLink(destination: EarthView(), label: {
                            PlanetCard(planet: PlanetList[2])
                        })
                        NavigationLink(destination: MarsView(), label: {
                            PlanetCard(planet: PlanetList[3])
                        })
                        NavigationLink(destination: JupiterView(), label: {
                            PlanetCard(planet: PlanetList[4])
                        })
                        NavigationLink(destination: SaturnView(), label: {
                            PlanetCard(planet: PlanetList[5])
                        })
                        NavigationLink(destination: UranusView(), label: {
                            PlanetCard(planet: PlanetList[6])
                        })
                        NavigationLink(destination: NeptuneView(), label: {
                            PlanetCard(planet: PlanetList[7])
                        })
                    }
                }
                Text("Rockets")
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding()
                    .font(.title.bold())
                ScrollView(.horizontal) {
                    HStack {
                        ScrollView(.horizontal) {
                            HStack {
                                NavigationLink(destination: SaturnV(), label: {
                                    RocketCard(rocketHome: RocketHomeList[0])
                                    
                                        .padding(.horizontal)
                                })
                                NavigationLink(destination: SpaceShuttle(), label: {
                                    RocketCard(rocketHome: RocketHomeList[1])
                                })
                                NavigationLink(destination: FalconHeavy(), label: {
                                   RocketCard(rocketHome: RocketHomeList[2])
                                })
                                NavigationLink(destination: Starship(), label: {
                                    RocketCard(rocketHome: RocketHomeList[3])
                                })
                                NavigationLink(destination:RocketView(rocket: RocketList[4]), label: {
                                    RocketCard(rocketHome: RocketHomeList[4])
                                        .padding(.horizontal)
                                })
                                NavigationLink(destination: RocketView(rocket: RocketList[5]), label: {
                                    RocketCard(rocketHome: RocketHomeList[5])
                                        .padding(.horizontal)
                                })
                                NavigationLink(destination: RocketView(rocket: RocketList[6]), label: {
                                    RocketCard(rocketHome: RocketHomeList[6])
                                        .padding(.horizontal)
                                })
                            }
                        }
                    }
                }
                Spacer()
                    .frame(height: 1)
                
               
                Text("Active Mars Rovers")
                    .font(.title).bold()
                    .frame(maxWidth: 350, maxHeight: 350, alignment: .leading)
                
                NavigationLink (destination: Preservearance(), label: {
                    VStack {
                    HStack {
                            Text("Preservearance")
                                .foregroundColor(.black)
                                .font(.title3).bold()
                                .frame(maxWidth: 180, maxHeight: 5, alignment: .leading)
                            Image("perseverance")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 50, maxHeight: 50, alignment: .trailing)
                        }
                           
                        }
                    .offset(y: -35)
                })
                        
                .padding()
                
                NavigationLink(destination: Curiosity(), label: {
                    VStack {
                        HStack {
                            Text("Curiosity")
                                .foregroundColor(.black)
                                .font(.title3).bold()
                                .frame(maxWidth: 180, maxHeight: 5, alignment: .leading)
                            Image("curiousoty")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 50, maxHeight: 50, alignment: .trailing)
                        }
                    }
                    .offset(y: -35)
                })
                    
                }
            .toolbar {
                Button {
                    isSidebarOpened.toggle()
                } label: {
                    Label("Toggle Sidebar", systemImage: "line.3.horizontal.circle.fill")
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            }
            SideMenu(isSidebarVisible: $isSidebarOpened)
    }
        
}
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(moreInfo: MoreInformationList[0]).environmentObject(PurchaseManager())
    }
}
