//
//  SuperHeroesApp.swift
//  SuperHeroes
//
//  Created by Konstantin Loginov on 02.09.2021.
//

import SwiftUI

@main
struct SuperHeroesApp: App {
    init() {
        UINavigationBar.appearance().barTintColor = .clear
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UIScrollView.appearance().keyboardDismissMode = .onDrag
    }
    
    var body: some Scene {
        WindowGroup {
            // TODO: Oh no! The root element of multipage application has to be wrapped into NavigationView! You read it  https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-programmatic-navigation-in-swiftui for today's lecture
            ContentView()
            .preferredColorScheme(.dark)
            .accentColor(.white)
        }
    }
}
