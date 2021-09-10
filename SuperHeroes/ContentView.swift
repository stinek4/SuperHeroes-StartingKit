//
//  ContentView.swift
//  SuperHeroes
//
//  Created by Konstantin Loginov on 08.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingDetailView = false
    
    
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: Text("Second View"), isActive: $isShowingDetailView) { EmptyView() }
                
                
                Button("Tap to show detail") {
                    isShowingDetailView = true
                }
            }
            .navigationTitle("Navigation")
            
            }
    }
}

/*struct ContentView: View {
    @State private var showingSheet = false

    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SheetView()
        }
    }
}*/


/*struct ContentView: View {
    @State private var selection: String? = nil

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("View A"), tag: "A", selection: $selection) { EmptyView() }
                NavigationLink(destination: Text("View B"), tag: "B", selection: $selection) { EmptyView() }

                Button("Tap to show A") {
                    selection = "A"
                }

                Button("Tap to show B") {
                    selection = "B"
                }
            }
            .navigationTitle("Navigation")
        }
    }
}*/
