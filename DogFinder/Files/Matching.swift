//
//  Matcher.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/30/25.
//

import Foundation

struct UserInput {
    var affectionateWithFamily: Int
    var goodWithYoungChildren: Int
    var goodWithOtherDogs: Int
    var sheddingLevel: Int
    var coatGroomingFrequency: Int
    var droolingLevel: Int
    var opennessToStrangers: Int
    var playfulnessLevel: Int
    var watchdogProtectiveNature: Int
    var adaptabilityLevel: Int
    var trainabilityLevel: Int
    var energyLevel: Int
    var barkingLevel: Int
    var mentalStimulationNeeds: Int
}


func findUserMatch(userInput: UserInput) -> Breed {
    var bestMatch = ALL_Breeds.first!
    var highestScore = 0
    
    for breed in ALL_Breeds {
        var currentScoreForBreed = 10000
        
        // apply score
        currentScoreForBreed -= abs(breed.affectionateWithFamily - userInput.affectionateWithFamily)
        currentScoreForBreed -= abs(breed.goodWithYoungChildren - userInput.goodWithYoungChildren)
        currentScoreForBreed -= abs(breed.goodWithOtherDogs - userInput.goodWithOtherDogs)
        currentScoreForBreed -= abs(breed.sheddingLevel - userInput.sheddingLevel)
        currentScoreForBreed -= abs(breed.coatGroomingFrequency - userInput.coatGroomingFrequency)
        currentScoreForBreed -= abs(breed.droolingLevel - userInput.droolingLevel)
        currentScoreForBreed -= abs(breed.opennessToStrangers - userInput.opennessToStrangers)
        currentScoreForBreed -= abs(breed.playfulnessLevel - userInput.playfulnessLevel)
        currentScoreForBreed -= abs(breed.watchdogProtectiveNature - userInput.watchdogProtectiveNature)
        currentScoreForBreed -= abs(breed.adaptabilityLevel - userInput.adaptabilityLevel)
        currentScoreForBreed -= abs(breed.trainabilityLevel - userInput.trainabilityLevel)
        currentScoreForBreed -= abs(breed.energyLevel - userInput.energyLevel)
        currentScoreForBreed -= abs(breed.mentalStimulationNeeds - userInput.mentalStimulationNeeds)
        
        if currentScoreForBreed > highestScore {
            highestScore = currentScoreForBreed
            bestMatch = breed
        }
    }
    return bestMatch
}
