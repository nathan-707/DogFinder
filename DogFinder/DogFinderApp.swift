//
//  DogFinderApp.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/14/25.
//

import SwiftUI

@main
struct DogFinderApp: App {
    @StateObject var viewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
