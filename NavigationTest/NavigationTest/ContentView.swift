//
//  ContentView.swift
//  NavigationTest
//
//  Created by Hiroki Kayanuma on 2023-01-28.
//

import SwiftUI

struct ContentView: View {
    @State private var path: [Color] = [] // Nothing on the stack by default.

    var body: some View {
        TabView {
            HomeView()
                            .tabItem {
                                Label("Home", systemImage: "person")
                            }

                        StoryView()
                            .tabItem {
                                Label("Story", systemImage: "book")
                            }
                        
                        FavoritesView()
                            .tabItem {
                                Label("Favorites", systemImage: "star")
                            }
                        
                        FunFactsView()
                            .tabItem {
                                Label("Fun Facts", systemImage: "hand.thumbsup")
                            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
