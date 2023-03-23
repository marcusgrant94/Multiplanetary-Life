//
//  MoonsView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/21/23.
//

import SwiftUI

struct MoonsView: View {
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
                        NavigationLink(destination: Ganymede(), label: {
                            
                            VStack(spacing: 1) {
                                ZStack {
                                    Color("CustomColor7")
                                        .frame(width: 300, height: 420)
                                        .cornerRadius(20)
                                        .padding(.horizontal)
                                    Text("1").opacity(0.5)
                                        .frame(width: 300, height: 480, alignment: .bottomLeading)
                                        .font(.system(size: 320))
                                        .fontDesign(.rounded)
                                        .foregroundColor(.white)
                                    VStack {
                                        Image("ganymede")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 220, alignment: .topTrailing)
                                            .offset(x: 33, y: -12)
                                        Text("Ganymede")
                                            .foregroundColor(.black)
                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                                            .padding()
                                            .font(.title).bold()
                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
                                    }
                                }
                                .frame(width: 300, height: 420)
                                .padding(6.5)
                                .background(Color.white)
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .shadow(radius: 5)
                                .padding(13)
                                
                                HStack {
                                    GeometryReader { geometry in
                                        Rectangle()
                                            .fill(Color.gray).opacity(0.6)
                                            .frame(width: 3, height: 75, alignment: .bottom)
                                            .frame(width: 80)
                                    }
                                    .frame(height: 80)
                                    .padding(.horizontal)

                                    Text("Snippet")
                                        .foregroundColor(Color("CustomColor"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.title3).bold()
                                        .offset(x: -20)
                                        .offset(y: -65)
                                    Text("Ganymede, a satellite of Jupiter, is the largest and most massive of the Solar System's moons")
                                        .foregroundColor(Color("CustomColor"))
                                        .frame(width: 180)
                //                        .font(.system(size: 15))
                                        .offset(x: -85)
                                }
                            }
                        })
                        
                        
                        NavigationLink(destination: Io(), label: {
                            
                            VStack(spacing: 1) {
                                ZStack {
                                    Color("CustomColor7")
                                        .frame(width: 300, height: 420)
                                        .cornerRadius(20)
                                        .padding(.horizontal)
                                    Text("2").opacity(0.5)
                                        .frame(width: 300, height: 480, alignment: .bottomLeading)
                                        .font(.system(size: 320))
                                        .fontDesign(.rounded)
                                        .foregroundColor(.white)
                                    VStack {
                                        Image("Io")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 230, alignment: .topTrailing)
                                            .offset(x: 35, y: -12)
                                        Text("Io")
                                            .foregroundColor(.black)
                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                                            .padding()
                                            .font(.title).bold()
                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
                                    }
                                }
                                .frame(width: 300, height: 420)
                                .padding(6.5)
                                .background(Color.white)
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .shadow(radius: 5)
                                .padding(13)
                                
                                HStack {
                                    GeometryReader { geometry in
                                        Rectangle()
                                            .fill(Color.gray).opacity(0.6)
                                            .frame(width: 3, height: 75, alignment: .bottom)
                                            .frame(width: 80)
                                    }
                                    .frame(height: 80)
                                    .padding(.horizontal)

                                    Text("Snippet")
                                        .foregroundColor(Color("CustomColor"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.title3).bold()
                                        .offset(x: -20)
                                        .offset(y: -65)
                                    Text("Io, or Jupiter I, is the innermost and third-largest of the four Galilean moons of the planet Jupiter")
                                        .foregroundColor(Color("CustomColor"))
                                        .frame(width: 180)
                //                        .font(.system(size: 15))
                                        .offset(x: -85)
                                }
                            }
                        })
                        
                        
                        NavigationLink(destination: Titan(), label: {
                            
                            VStack(spacing: 1) {
                                ZStack {
                                    Color("CustomColor7")
                                        .frame(height: 420)
                                        .cornerRadius(20)
                                    Text("3").opacity(0.5)
                                        .frame(width: 300, height: 480, alignment: .bottomLeading)
                                        .font(.system(size: 320))
                                        .fontDesign(.rounded)
                                        .foregroundColor(.white)
                                    VStack {
                                        Image("titan")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(maxWidth: .infinity, maxHeight: 248, alignment: .topTrailing)
                                            .offset(x: 25)
                                        Text("Titan")
                                            .foregroundColor(.black)
                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                                            .padding()
                                            .font(.title).bold()
                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
                                    }
                                }
                                .frame(width: 300, height: 420)
                                .padding(6.5)
                                .background(Color.white)
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .shadow(radius: 5)
                                .padding(13)
                                
                                HStack {
                                    GeometryReader { geometry in
                                        Rectangle()
                                            .fill(Color.gray).opacity(0.6)
                                            .frame(width: 3, height: 75, alignment: .bottom)
                                            .frame(width: 80)
                                    }
                                    .frame(height: 80)
                                    .padding(.horizontal)

                                    Text("Snippet")
                                        .foregroundColor(Color("CustomColor"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.title3).bold()
                                        .offset(x: -20)
                                        .offset(y: -65)
                                    Text("Titan is the largest moon of Saturn and the second-largest natural satellite in the Solar System")
                                        .foregroundColor(Color("CustomColor"))
                                        .frame(width: 180)
                //                        .font(.system(size: 15))
                                        .offset(x: -85)
                                }
                            }
                        })
                        
                        NavigationLink(destination: Europa(), label: {
                            
                            VStack(spacing: 1) {
                                ZStack {
                                    Color("CustomColor7")
                                        .frame(height: 420)
                                        .cornerRadius(20)
                                    Text("4").opacity(0.3)
                                        .frame(width: 300, height: 480, alignment: .bottomLeading)
                                        .font(.system(size: 320))
                                        .fontDesign(.rounded)
                                        .foregroundColor(.white)
                                    VStack {
                                        Image("europa")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(maxWidth: .infinity, maxHeight: 248, alignment: .topTrailing)
                                        Text("Europa")
                                            .foregroundColor(.black)
                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                                            .padding()
                                            .font(.title).bold()
                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
                                    }
                                }
                                .frame(width: 300, height: 420)
                                .padding(6.5)
                                .background(Color.white)
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .shadow(radius: 5)
                                .padding(13)
                                
                                HStack {
                                    GeometryReader { geometry in
                                        Rectangle()
                                            .fill(Color.gray).opacity(0.6)
                                            .frame(width: 3, height: 75, alignment: .bottom)
                                            .frame(width: 80)
                                    }
                                    .frame(height: 80)
                                    .padding(.horizontal)

                                    Text("Snippet")
                                        .foregroundColor(Color("CustomColor"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.title3).bold()
                                        .offset(x: -20)
                                        .offset(y: -65)
                                    Text("Europa, or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter.")
                                        .foregroundColor(Color("CustomColor"))
                                        .frame(width: 180)
                //                        .font(.system(size: 15))
                                        .offset(x: -100)
                                }
                            }
                        })
                        
                        NavigationLink(destination: Triton(), label: {
                            
                            VStack(spacing: 1) {
                                ZStack {
                                    Color("CustomColor7")
                                        .frame(height: 420)
                                        .cornerRadius(20)
                                        .padding(.horizontal, 35)
                                    Text("5").opacity(0.5)
                                        .frame(width: 300, height: 480, alignment: .bottomLeading)
                                        .font(.system(size: 320))
                                        .fontDesign(.rounded)
                                        .foregroundColor(.white)
                                    VStack {
                                        Image("triton")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 370, alignment: .topTrailing)
                                            .offset(x: 30)
                                        Text("Triton")
                                            .foregroundColor(.black)
                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                                            .padding()
                                            .font(.title).bold()
                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
                                            .offset(x: 15, y: 20)
                                    }
                                }
                                .frame(width: 300, height: 420)
                                .padding(6.5)
                                .background(Color.white)
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .shadow(radius: 5)
                                .padding(13)
                                
                                HStack {
                                    GeometryReader { geometry in
                                        Rectangle()
                                            .fill(Color.gray).opacity(0.6)
                                            .frame(width: 3, height: 75, alignment: .bottom)
                                            .frame(width: 80)
                                    }
                                    .frame(height: 80)
                                    .padding(.horizontal)

                                    Text("Snippet")
                                        .foregroundColor(Color("CustomColor"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.title3).bold()
                                        .offset(x: -20)
                                        .offset(y: -65)
                                    Text("Triton is the largest natural satellite of the planet Neptune.")
                                        .foregroundColor(Color("CustomColor"))
                                        .frame(width: 180)
                //                        .font(.system(size: 15))
                                        .offset(x: -100)
                                }
                            }
                        })
                        
                        NavigationLink(destination: Moon(), label: {
                            
                            VStack(spacing: 1) {
                                ZStack {
                                    Color("CustomColor7")
                                        .frame(height: 400)
                                        .cornerRadius(20)
                                        .padding(.horizontal, 1)
                                    Text("6").opacity(0.5)
                                        .frame(width: 300, height: 480, alignment: .bottomLeading)
                                        .font(.system(size: 320))
                                        .fontDesign(.rounded)
                                        .foregroundColor(.white)
                                    VStack {
                                        Image("moon")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 203, alignment: .topTrailing)
                                            .offset(x: 39, y: -5)
                                        Text("Moon")
                                            .foregroundColor(.black)
                                            .shadow(color: Color.gray, radius: 2, x: 0, y: 3)
                                            .padding()
                                            .font(.title).bold()
                                            .frame(maxWidth: 270, maxHeight: 150, alignment: .trailing)
                                            .offset(x: 15, y: 35)
                                    }
                                }
                                .frame(width: 300, height: 400)
                                .padding(6.5)
                                .background(Color.white)
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .shadow(radius: 5)
                                .padding(13)
                                
                                HStack {
                                    GeometryReader { geometry in
                                        Rectangle()
                                            .fill(Color.gray).opacity(0.6)
                                            .frame(width: 3, height: 75, alignment: .bottom)
                                            .frame(width: 80)
                                    }
                                    .frame(height: 80)
                                    .padding(.horizontal)

                                    Text("Snippet")
                                        .foregroundColor(Color("CustomColor"))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.title3).bold()
                                        .offset(x: -20)
                                        .offset(y: -75)
                                    Text("The Moon is Earth's only natural satellite")
                                        .foregroundColor(Color("CustomColor"))
                                        .frame(width: 180)
                //                        .font(.system(size: 15))
                                        .offset(x: -100)
                                }
                            }
                        })
                    }
                    .offset(x: 6)
                    
                    
                }
                
               
            }
            }
        }
    }

struct MoonsView_Previews: PreviewProvider {
    static var previews: some View {
        MoonsView()
    }
}
