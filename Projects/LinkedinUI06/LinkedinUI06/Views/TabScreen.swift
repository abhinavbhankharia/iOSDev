//
//  TabScreen.swift
//  LinkedinUI06
//
//  Created by Abhinav Bhankharia on 08/06/25.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            MyNetworkScreen()
                .tabItem{
                    Image(systemName: "person.2.fill")
                    Text("My Network")
                }
            Text("Post")
                .tabItem{
                    Image(systemName: "plus.app.fill")
                    Text("Post")
                }
            Text("Notifications")
                .tabItem{
                    Image(systemName: "bell.badge.fill")
                    Text("Notifications")
                }
            Text("Jobs")
                .tabItem{
                    Image(systemName: "briefcase.fill")
                    Text("Notifications")
                }
        }
    }
}

#Preview {
    TabScreen()
}
