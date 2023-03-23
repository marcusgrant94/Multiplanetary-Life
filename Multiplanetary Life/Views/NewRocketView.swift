//
//  NewRocketView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/20/23.
//

import SwiftUI

struct NewRocketView: View {
    @EnvironmentObject var purchaseManager: PurchaseManager
    @ObservedObject var vm = CloudKitUserAuthViewModel.shared
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome Aboard \(vm.userName)")
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .font(.title2).bold()
                    .foregroundColor(Color("CustomColor"))
                    .padding()
                Text("Lets see what's out there")
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.horizontal)
                    .offset(y: -15)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 1) {
                        NavigationLink(destination: SaturnV(), label: {
                            
                            VStack(spacing: 1) {
                               
                                HStack {
                                    Image("nasalogo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 60, height: 60, alignment: .leading)
                                        .offset(x: 15, y: -250)
                                    VStack {
                                        Image("saturnv2")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 100, height: 500, alignment: .center)
                                            .offset(x: -25, y: 10)
                                        Text("Saturn V")
                                            .foregroundColor(.black)
                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                                            .padding()
                                            .font(.title).bold()
                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
                                            .offset(x: -30, y: 10)
                                    }
                                }
                                .frame(width: 230, height: 600)
                                .padding(6.5)
                                .background(Color.white)
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .shadow(radius: 5)
                                .padding(13)
                                
//                                HStack {
//                                    GeometryReader { geometry in
//                                        Rectangle()
//                                            .fill(Color.gray).opacity(0.6)
//                                            .frame(width: 3, height: 75, alignment: .bottom)
//                                            .frame(width: 80)
//                                    }
//                                    .frame(height: 80)
//                                    .padding(.horizontal)
//
//                                    Text("Snippet")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(maxWidth: .infinity, alignment: .leading)
//                                        .font(.title3).bold()
//                                        .offset(x: -20)
//                                        .offset(y: -65)
//                                    Text("Mercury is the first planet from the sun and the smallest planet in our Solar System.")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(width: 180)
//                //                        .font(.system(size: 15))
//                                        .offset(x: -85)
//                                }
                            }
                        })
                        
                        
                        NavigationLink(destination: SpaceShuttle(), label: {
                            
                            VStack(spacing: 1) {
                               
                                HStack {
                                    Image("nasalogo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 60, height: 60, alignment: .leading)
                                        .offset(x: 15, y: -250)
                                    VStack {
                                        Image("spaceshuttle2")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 400, alignment: .center)
                                            .offset(x: -30, y: 60)
                                        Text("Space Shuttle")
                                            .foregroundColor(.black)
                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                                            .padding()
                                            .font(.title).bold()
                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
                                            .offset(x: -40, y: 30)
                                    }
                                }
                                .frame(width: 230, height: 600)
                                .padding(6.5)
                                .background(Color.white)
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .shadow(radius: 5)
                                .padding(13)
                                
//                                HStack {
//                                    GeometryReader { geometry in
//                                        Rectangle()
//                                            .fill(Color.gray).opacity(0.6)
//                                            .frame(width: 3, height: 75, alignment: .bottom)
//                                            .frame(width: 80)
//                                    }
//                                    .frame(height: 80)
//                                    .padding(.horizontal)
//
//                                    Text("Snippet")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(maxWidth: .infinity, alignment: .leading)
//                                        .font(.title3).bold()
//                                        .offset(x: -20)
//                                        .offset(y: -65)
//                                    Text("Mercury is the first planet from the sun and the smallest planet in our Solar System.")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(width: 180)
//                //                        .font(.system(size: 15))
//                                        .offset(x: -85)
//                                }
                            }
                        })
                        
                        
                        NavigationLink(destination: FalconHeavy(), label: {
                            
                            VStack(spacing: 1) {
                               
                                HStack {
                                    Image("spacexlogo")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 60, height: 15, alignment: .leading)
                                        .offset(x: 15, y: -258)
                                    VStack {
                                        Image("falconheavy")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 400, alignment: .center)
                                            .offset(x: -30, y: 60)
                                        Text("Falcon Heavy")
                                            .foregroundColor(.black)
                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                                            .padding()
                                            .font(.title).bold()
                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
                                            .offset(x: -45, y: 55)
                                    }
                                }
                                .frame(width: 230, height: 600)
                                .padding(6.5)
                                .background(Color.white)
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .shadow(radius: 5)
                                .padding(13)
                                
//                                HStack {
//                                    GeometryReader { geometry in
//                                        Rectangle()
//                                            .fill(Color.gray).opacity(0.6)
//                                            .frame(width: 3, height: 75, alignment: .bottom)
//                                            .frame(width: 80)
//                                    }
//                                    .frame(height: 80)
//                                    .padding(.horizontal)
//
//                                    Text("Snippet")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(maxWidth: .infinity, alignment: .leading)
//                                        .font(.title3).bold()
//                                        .offset(x: -20)
//                                        .offset(y: -65)
//                                    Text("Mercury is the first planet from the sun and the smallest planet in our Solar System.")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(width: 180)
//                //                        .font(.system(size: 15))
//                                        .offset(x: -85)
//                                }
                            }
                        })
                        
                        NavigationLink(destination: Starship(), label: {
                            
                            VStack(spacing: 1) {
                               
                                HStack {
                                    Image("spacexlogo")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 60, height: 15, alignment: .leading)
                                        .offset(x: 15, y: -258)
                                    VStack {
                                        Image("starship")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 400, alignment: .center)
                                            .offset(x: -30, y: 60)
                                        Text("Starship")
                                            .foregroundColor(.black)
                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                                            .padding()
                                            .font(.title).bold()
                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
                                            .offset(x: -45, y: 55)
                                    }
                                }
                                .frame(width: 230, height: 600)
                                .padding(6.5)
                                .background(Color.white)
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .shadow(radius: 5)
                                .padding(13)
                                
//                                HStack {
//                                    GeometryReader { geometry in
//                                        Rectangle()
//                                            .fill(Color.gray).opacity(0.6)
//                                            .frame(width: 3, height: 75, alignment: .bottom)
//                                            .frame(width: 80)
//                                    }
//                                    .frame(height: 80)
//                                    .padding(.horizontal)
//
//                                    Text("Snippet")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(maxWidth: .infinity, alignment: .leading)
//                                        .font(.title3).bold()
//                                        .offset(x: -20)
//                                        .offset(y: -65)
//                                    Text("Mercury is the first planet from the sun and the smallest planet in our Solar System.")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(width: 180)
//                //                        .font(.system(size: 15))
//                                        .offset(x: -85)
//                                }
                            }
                        })
                        
                        NavigationLink(destination: Soyuz(), label: {
                            
                            VStack(spacing: 1) {
                               
                                HStack {
                                    Image("")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 60, height: 15, alignment: .leading)
                                        .offset(x: 15, y: -258)
                                    VStack {
                                        Image("soyuz")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 400, alignment: .center)
                                            .offset(x: -30, y: 50)
                                        Text("Soyuz")
                                            .foregroundColor(.black)
                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                                            .padding()
                                            .font(.title).bold()
                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
                                            .offset(x: -55, y: 65)
                                    }
                                }
                                .frame(width: 230, height: 600)
                                .padding(6.5)
                                .background(Color.white)
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .shadow(radius: 5)
                                .padding(13)
                                
//                                HStack {
//                                    GeometryReader { geometry in
//                                        Rectangle()
//                                            .fill(Color.gray).opacity(0.6)
//                                            .frame(width: 3, height: 75, alignment: .bottom)
//                                            .frame(width: 80)
//                                    }
//                                    .frame(height: 80)
//                                    .padding(.horizontal)
//
//                                    Text("Snippet")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(maxWidth: .infinity, alignment: .leading)
//                                        .font(.title3).bold()
//                                        .offset(x: -20)
//                                        .offset(y: -65)
//                                    Text("Mercury is the first planet from the sun and the smallest planet in our Solar System.")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(width: 180)
//                //                        .font(.system(size: 15))
//                                        .offset(x: -85)
//                                }
                            }
                        })
                        
//                        NavigationLink(destination: NewSaturnView(), label: {
//
//                            VStack(spacing: 1) {
//                                ZStack {
//                                    Color("CustomColor3")
//                                        .frame(height: 400)
//                                        .cornerRadius(20)
//                                        .padding(.horizontal, 12)
//                                    Text("6").opacity(0.5)
//                                        .frame(width: 300, height: 480, alignment: .bottomLeading)
//                                        .font(.system(size: 320))
//                                        .fontDesign(.rounded)
//                                        .foregroundColor(.white)
//                                    VStack {
//                                        Image("saturntransparent")
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(width: 320, alignment: .topTrailing)
//                                            .offset(x: 3, y: -20)
//                                        Text("Saturn")
//                                            .foregroundColor(.black)
//                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
//                                            .padding()
//                                            .font(.title).bold()
//                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
//                                            .offset(x: 15, y: 35)
//                                    }
//                                }
//                                .frame(width: 300, height: 400)
//                                .padding(6.5)
//                                .background(Color.white)
//                                .cornerRadius(20)
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .shadow(radius: 5)
//                                .padding(13)
//
//                                HStack {
//                                    GeometryReader { geometry in
//                                        Rectangle()
//                                            .fill(Color.gray).opacity(0.6)
//                                            .frame(width: 3, height: 75, alignment: .bottom)
//                                            .frame(width: 80)
//                                    }
//                                    .frame(height: 80)
//                                    .padding(.horizontal)
//
//                                    Text("Snippet")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(maxWidth: .infinity, alignment: .leading)
//                                        .font(.title3).bold()
//                                        .offset(x: -20)
//                                        .offset(y: -75)
//                                    Text("Saturn is the sixth planet from the sun and the most dense planet in our Solar System.")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(width: 180)
//                //                        .font(.system(size: 15))
//                                        .offset(x: -100)
//                                }
//                            }
//                        })
//
//                        NavigationLink(destination: NewUranusView(), label: {
//
//                            VStack(spacing: 1) {
//                                ZStack {
//                                    Color("CustomColor4")
//                                        .frame(height: 420)
//                                        .cornerRadius(20)
//                                    Text("7").opacity(0.5)
//                                        .frame(width: 300, height: 480, alignment: .bottomLeading)
//                                        .font(.system(size: 320))
//                                        .fontDesign(.rounded)
//                                        .foregroundColor(.white)
//                                    VStack {
//                                        Image("uranustransparent")
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(maxWidth: .infinity, maxHeight: 248, alignment: .topTrailing)
//                                        Text("Uranus")
//                                            .foregroundColor(.black)
//                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
//                                            .padding()
//                                            .font(.title).bold()
//                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
//                                            .offset(y: 15)
//                                    }
//                                }
//                                .frame(width: 300, height: 420)
//                                .padding(6.5)
//                                .background(Color.white)
//                                .cornerRadius(20)
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .shadow(radius: 5)
//                                .padding(13)
//
//                                HStack {
//                                    GeometryReader { geometry in
//                                        Rectangle()
//                                            .fill(Color.gray).opacity(0.6)
//                                            .frame(width: 3, height: 75, alignment: .bottom)
//                                            .frame(width: 80)
//                                    }
//                                    .frame(height: 80)
//                                    .padding(.horizontal)
//
//                                    Text("Snippet")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(maxWidth: .infinity, alignment: .leading)
//                                        .font(.title3).bold()
//                                        .offset(x: -20)
//                                        .offset(y: -65)
//                                    Text("Uranus is the seventh planet from the sun and has an axial tilt of almost 90°.")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(width: 180)
//                //                        .font(.system(size: 15))
//                                        .offset(x: -100)
//                                }
//                            }
//                        })
//
//                        NavigationLink(destination: NewNeptuneView(), label: {
//
//                            VStack(spacing: 1) {
//                                ZStack {
//                                    Color("CustomColor5")
//                                        .frame(height: 420)
//                                        .cornerRadius(20)
//                                    Text("8").opacity(0.3)
//                                        .frame(width: 300, height: 480, alignment: .bottomLeading)
//                                        .font(.system(size: 320))
//                                        .fontDesign(.rounded)
//                                        .foregroundColor(.white)
//                                    VStack {
//                                        Image("neptunetransparent")
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(maxWidth: .infinity, maxHeight: 248, alignment: .topTrailing)
//                                        Text("Neptune")
//                                            .foregroundColor(.black)
//                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
//                                            .padding()
//                                            .font(.title).bold()
//                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
//                                            .offset(x: 18, y: 15)
//                                    }
//                                }
//                                .frame(width: 300, height: 420)
//                                .padding(6.5)
//                                .background(Color.white)
//                                .cornerRadius(20)
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .shadow(radius: 5)
//                                .padding(13)
//
//                                HStack {
//                                    GeometryReader { geometry in
//                                        Rectangle()
//                                            .fill(Color.gray).opacity(0.6)
//                                            .frame(width: 3, height: 57, alignment: .bottom)
//                                            .frame(width: 80)
//                                    }
//                                    .frame(height: 80)
//                                    .padding(.horizontal)
//
//                                    Text("Snippet")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(maxWidth: .infinity, alignment: .leading)
//                                        .font(.title3).bold()
//                                        .offset(x: -20)
//                                        .offset(y: -65)
//                                    Text("Neptune is the seventh planet from the sun.")
//                                        .foregroundColor(Color("CustomColor"))
//                                        .frame(width: 180)
//                //                        .font(.system(size: 15))
//                                        .offset(x: -90, y: -20)
//                                }
//                            }
//                        })
                    }
                    .offset(x: 6)
                    
                    
                }
                
               
            }
            }
        }
    }
    
    struct NewRocketView_Previews: PreviewProvider {
        static var previews: some View {
            NewRocketView().environmentObject(PurchaseManager())
        }
    }
