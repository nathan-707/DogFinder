//
//  ViewModel.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/14/25.
//

import Combine
import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    var aiAssistant: AIAssistant? = AIAssistant()

    @Published var finalRational = ""
    
    @Published var editableQuestions: [Question] = questions

    @Published var currentView: Views = .mainMenu
    
    @Published var bestMatch: Breed?
    
    @Published var userInput: UserInput?
    
    var allBreeds: [Breed] = []
}
