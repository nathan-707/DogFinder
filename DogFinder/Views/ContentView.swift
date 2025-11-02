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
        switch viewModel.currentView {
        case .mainMenu:
            MainMenu()
                .preferredColorScheme(.dark)
        case .questionView:
            QuestionView()
                .preferredColorScheme(.dark)
            
        case .resultView:
            ResultView()
                .preferredColorScheme(.dark)
        case .breedCatalogView:
            BreedCatalogView()
                .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}
