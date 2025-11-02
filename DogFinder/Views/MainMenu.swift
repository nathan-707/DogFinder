//
//  MainMenu.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/14/25.
//

import SwiftUI

var ALL_Breeds: [Breed] = []
struct MainMenu: View {
    @EnvironmentObject private var viewModel: ViewModel

    var body: some View {

        VStack {
            Text("Welcome to DogFinder!")
                .font(.largeTitle)
                .padding(10)
                .foregroundStyle(.primary)
                .bold()

            Text("Finding a dog made easy.")
                .font(.headline)
                .foregroundStyle(.secondary)

            Button {
                viewModel.currentView = .questionView
                heavyImpact.impactOccurred()
            } label: {
                Text("Get Started")
            }
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            .tint(defaultUIColor)
            .foregroundStyle(.white)
            .padding(12)
            .font(.headline)
            
            
            
            Button {
                viewModel.currentView = .breedCatalogView
                heavyImpact.impactOccurred()
            } label: {
                Text("Breed Catalog")
            }
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            .tint(defaultUIColor)
            .foregroundStyle(.white)
            .padding(12)
            .font(.headline)
            
            
        }
        .onAppear {
            setup()
            ALL_Breeds = try! BreedLoader.decodeFromBundle()
        }
    }

    func setup() {
        heavyImpact.prepare()
    }
}

#Preview {
    MainMenu()
}

let heavyImpact = UIImpactFeedbackGenerator(style: .heavy)
