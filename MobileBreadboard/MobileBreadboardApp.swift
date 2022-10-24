//
//  MobileBreadboardApp.swift
//  MobileBreadboard
//
//  Created by Alex Judge on 10/23/22.
//

import SwiftUI

@main
struct MobileBreadboardApp: App {

   @StateObject var locations = Locations()
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView{
                    ContentView(location: locations.primary )
                }
                .tabItem{
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                    // use SF symbols to import the pre done apple icons 
                }
                
                
                NavigationView{
                    WorldView()
                }
                .tabItem
                {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                
                NavigationView
                {
                    TipsView()
                }
                .tabItem
                {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}
