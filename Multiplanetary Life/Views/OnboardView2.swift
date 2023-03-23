//
//  OnboardView2.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct OnboardView2: View {
    
    @Binding var shouldShowOnboarding: Bool
    @ObservedObject var vm = CloudKitUserAuthViewModel.shared
    var body: some View {
                NavigationView {
                    ZStack {
                        VStack {
                            TabView {
                                OnBoardView3(image: "AppLogo", title: "Welcome to Multiplanetary Life", description: "Select get started to continue.", description2: "Becoming multiplanetary is one of the greatest filters. Only now, 4.5 billion years after Earth formed, is it possible. How long this window to reach Mars remains open is uncertain. Perhaps a long time, perhaps not. In case it is the latter, we should act now.                         -Elon Musk")
                            }
                            .tabViewStyle(.page(indexDisplayMode: .always))
                            .indexViewStyle(.page(backgroundDisplayMode: .always))
        
                            Spacer()
                                .frame(height: 150)
        
                            Button {
                                shouldShowOnboarding.toggle()
                            } label: {
                                Text("Get Started")
                            }
                            .frame(width: 150, height: 40, alignment: .center)
                            .foregroundColor(.black)
                           
                            .buttonStyle(.bordered)
                            .cornerRadius(60)
        
                            Spacer()
                                .frame(height: 40)
        
//                            NavigationLink(destination: CreateAccountView(), label: {
//                                Text("Create Account")
//                                    .foregroundColor(.black)
//                                    .frame(width: 150, height: 40, alignment: .center)
//                                    .foregroundColor(.black)
//                                    .background(Color.white)
//                                    .buttonStyle(.bordered)
//                                    .cornerRadius(60)
//                            })
//                            Text("Discover The Edge Of The Universe")
//                                .frame(width: 370, height: 260)
//                                .padding(6.5)
//                                .background(Color.white)
//                                .cornerRadius(27)
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .shadow(radius: 5)
//                                .padding(13)
//                                .offset(y: 50)
//                                .opacity(0.5)
                        }
                    }
                }
            }
        }
