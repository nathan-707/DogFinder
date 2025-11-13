//
//  ViewModel.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/14/25.
//

import Combine
import Foundation
import SwiftUI


@available(iOS 26.0, *)
var aiAssistant: AIAssistant? = AIAssistant()


class ViewModel: ObservableObject {


    @Published var finalRational = ""
    
    @Published var editableQuestions: [Question] = questions

    @Published var currentView: Views = .mainMenu
    
    @Published var bestMatches: [Breed] = []
    
    @Published var userInput: UserInput?
    
    var allBreeds: [Breed] = []
}
