//
//  ContentView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

struct ContentView: View {
        @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
        @ObservedObject var vm = CloudKitUserAuthViewModel.shared
        
        var body: some View {
            NavigationView {
                TabBar()
            }
            
            .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
                OnboardView2(shouldShowOnboarding: $shouldShowOnboarding)
            })
        }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(PurchaseManager())
        }
    }
}
