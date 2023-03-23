//
//  TabBar.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
//            HomeView(moreInfo: MoreInformationList[0]).environmentObject(PurchaseManager())
                        NewHomeView().environmentObject(PurchaseManager())
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            
                        NewRocketView().environmentObject(PurchaseManager())
                            .tabItem {
                                Label("Rockets", systemImage: "airplane")
                            }
                        MoonsView()
                            .tabItem {
                                Label("Moons", systemImage: "globe.asia.australia.fill")
                            }
                    }
                .accentColor(.accentColor)
        }
    }
    
    struct TabView_Previews: PreviewProvider {
        static var previews: some View {
            TabBar()
        }
    }
