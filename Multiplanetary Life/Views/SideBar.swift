//
//  SideBar.swift
//  Multiplanetary Life
//
//  Created by Marcus Grant on 2/17/23.
//

import SwiftUI

var secondaryColor: Color = Color(.init(red: 100 / 255, green: 174 / 255, blue: 255 / 255, alpha: 1))

struct MenuItem: Identifiable {
    var id: Int
    var icon: String
    var text: String
}

var userActions: [MenuItem] = [
    MenuItem(id: 4001, icon: "person.circle.fill", text: "My Account")
//    MenuItem(id: 4002, icon: "bag.fill", text: "My Orders"),
//    MenuItem(id: 4003, icon: "gift.fill", text: "Wishlist"),
]

var profileActions: [MenuItem] = [
//    MenuItem(id: 4004, icon: "wrench.and.screwdriver.fill", text: "Settings"),
//    MenuItem(id: 4005, icon: "iphone.and.arrow.forward", text: "Logout"),
]

struct SideMenu: View {
    @Binding var isSidebarVisible: Bool
    var sideBarWidth = UIScreen.main.bounds.size.width * 0.6
    var menuColor: Color = Color(.init(red: 52 / 255, green: 70 / 255, blue: 182 / 255, alpha: 1))
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(.black.opacity(0.6))
            .opacity(isSidebarVisible ? 1 : 0)
            .animation(.easeInOut.delay(0.2), value: isSidebarVisible)
            .onTapGesture {
                isSidebarVisible.toggle()
            }
            
            content
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    var content: some View {
        HStack(alignment: .top) {
            ZStack(alignment: .top) {
                menuColor
                MenuChevron
                
                VStack(alignment: .leading, spacing: 20) {
                    userProfile
                    Divider()
                    MenuLinks(items: userActions)
                    Divider()
                    MenuLinks(items: profileActions)
                }
                .padding(.top, 80)
                .padding(.horizontal, 40)
            }
            .frame(width: sideBarWidth)
            .offset(x: isSidebarVisible ? 0 : -sideBarWidth)
            .animation(.default, value: isSidebarVisible)
            
            Spacer()
        }
    }
    
    var MenuChevron: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 18)
                .fill(menuColor)
                .frame(width: 60, height: 60)
                .rotationEffect(Angle(degrees: 45))
                .offset(x: isSidebarVisible ? -18 : -10)
                .onTapGesture {
                    isSidebarVisible.toggle()
                }
            
            Image(systemName: "chevron.right")
                .foregroundColor(secondaryColor)
                .rotationEffect(isSidebarVisible ? Angle(degrees: 180) : Angle(degrees: 0))
                .offset(x: isSidebarVisible ? -4 : 8)
                .foregroundColor(.blue)
        }
        .offset(x: sideBarWidth / 2, y: 80)
        .animation(.default, value: isSidebarVisible)
    }
    
    @ObservedObject var vm = CloudKitUserAuthViewModel.shared
    
    var userProfile: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    Text(vm.userName + " " + vm.userLastName)
                        .foregroundColor(.white)
                        .bold()
                        .font(.title3)
                }
            }
            .padding(.bottom, 20)
        }
    }
}

struct MenuLinks: View {
    var items: [MenuItem]
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            ForEach(items) { item in
                menuLink(icon: item.icon, text: item.text)
            }
        }
        .padding(.vertical, 14)
        .padding(.leading, 8)
    }
}

struct menuLink: View {
    var icon: String
    var text: String
    var body: some View {
        NavigationLink(destination: SettingsView()) {
            HStack {
                Text(text)
                    .foregroundColor(.white)
                    .font(.body)
            }
        }
    }
}


