//
//  SettingsView.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    @ObservedObject var vm = CloudKitUserAuthViewModel.shared
    
    var body: some View {
        Form {
            Text("Signed in as: \(vm.userName + " " + vm.userLastName)")
            Link("Follow on Twitter", destination: URL(string: "https://twitter.com/Marcus__Grant")!)
                .foregroundColor(.blue)
            Link("Terms of Service", destination: URL(string:"https://www.apple.com/legal/internet-services/itunes/dev/stdeula/")!)
                .foregroundColor(.blue)
            Link("Private Policy", destination: URL(string: "https://www.termsfeed.com/live/34638907-a7f9-4835-9c96-d633070e66b2")!)
                .foregroundColor(.blue)
            
//            Button {
//                Task {
//                    do {
//                        try await AppStore.sync()
//                    } catch {
//                        print(error)
//                    }
//                }
//            } label: {
//                Text("Restore Purchases")
//            }
//            .foregroundColor(.blue)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
