//
//  ContentView.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/14/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var viewModel: ViewModel
    var body: some View {
        TabView {
            MainMenu()
                .preferredColorScheme(.dark)
                .tabItem {
                    Label("Find A Dog", systemImage: "dog.fill")
                }

            BreedCatalogView()
                .preferredColorScheme(.dark)
                .tabItem {
                    Label("Breed Catalog", systemImage: "book.fill")
                }
        }.tint(.orange)
            .onAppear {
                heavyImpact.prepare()
                ALL_Breeds = try! BreedLoader.decodeFromBundle()
            }
    }
}

#Preview {
    ContentView()
}
