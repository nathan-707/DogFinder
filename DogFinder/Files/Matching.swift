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


func findUserMatch(userInput: UserInput) -> [Breed] {
    let maxNumberOfBestMatches = 5

    // Build an array of (breed, score) for all breeds
    let scoredBreeds: [(breed: Breed, score: Int)] = ALL_Breeds.map { breed in
        var score = 10000
        score -= abs(breed.affectionateWithFamily - userInput.affectionateWithFamily)
        score -= abs(breed.goodWithYoungChildren - userInput.goodWithYoungChildren)
        score -= abs(breed.goodWithOtherDogs - userInput.goodWithOtherDogs)
        score -= abs(breed.sheddingLevel - userInput.sheddingLevel)
        score -= abs(breed.coatGroomingFrequency - userInput.coatGroomingFrequency)
        score -= abs(breed.droolingLevel - userInput.droolingLevel)
        score -= abs(breed.opennessToStrangers - userInput.opennessToStrangers)
        score -= abs(breed.playfulnessLevel - userInput.playfulnessLevel)
        score -= abs(breed.watchdogProtectiveNature - userInput.watchdogProtectiveNature)
        score -= abs(breed.adaptabilityLevel - userInput.adaptabilityLevel)
        score -= abs(breed.trainabilityLevel - userInput.trainabilityLevel)
        score -= abs(breed.energyLevel - userInput.energyLevel)
        score -= abs(breed.mentalStimulationNeeds - userInput.mentalStimulationNeeds)
        // Include barking level since it's present on UserInput
        score -= abs(breed.barkingLevel - userInput.barkingLevel)
        return (breed, score)
    }

    // Sort by score descending (highest score first); for stable ordering on ties, fall back to name if available
    let sortedBreeds = scoredBreeds.sorted { lhs, rhs in
        if lhs.score != rhs.score { return lhs.score > rhs.score }
        // If Breed has a `name` property, this ensures deterministic order on ties; otherwise remove the next line.
        return String(describing: lhs.breed).localizedCaseInsensitiveCompare(String(describing: rhs.breed)) == .orderedAscending
    }
    
    for breed in sortedBreeds {
        print(breed.breed.breedName)
        print(breed.score)
        print("-------")
    }

    // Take the top N breeds
    let topBreeds = sortedBreeds.prefix(maxNumberOfBestMatches).map { $0.breed }
    
    for breed in topBreeds {
        print("*******")
        print(breed.breedName)
        print("*******")
    }
    
  
    return Array(topBreeds)
}
