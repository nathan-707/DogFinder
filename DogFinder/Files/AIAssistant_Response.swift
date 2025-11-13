//
//  AIAssistant_Response.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 11/2/25.
//

import FoundationModels

@available(iOS 26, *)

@Generable
struct AIResponse {
    
    
    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Affectionate With Family' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating, linking it to their original purpose (e.g., companion, hunter, etc.).
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let affectionateWithFamily_Rationale: String
    
    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Good With Young Children' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating, linking it to their size, energy level, or general temperament.
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let goodWithYoungChildren_Rationale: String

    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Good With Other Dogs' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating, linking it to their history (e.g., pack hunter, solitary hunter, guard dog, etc.).
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let goodWithOtherDogs_Rationale: String

    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Shedding Level' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating, describing their coat type (e.g., double coat, single coat, etc.).
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let sheddingLevel_Rationale: String

    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Coat Grooming Frequency' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating, linking it to their coat's length, texture, or matting tendency.
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let coatGroomingFrequency_Rationale: String

    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Drooling Level' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating, usually related to their jowl structure (e.g., tight jowls, loose jowls).
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let droolingLevel_Rationale: String

    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Openness To Strangers' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating, linking it to their history (e.g., bred for companion vs. bred for guarding).
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let opennessToStrangers_Rationale: String

    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Playfulness Level' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating (e.g., "They maintain a puppy-like demeanor", "They are a serious working breed").
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let playfulnessLevel_Rationale: String

    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Watchdog/Protective Nature' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating, based on their history (e.g., guard dog, companion, alert barker).
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let watchdogProtectiveNature_Rationale: String

    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Adaptability Level' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating (e.g., sensitive to change, happy anywhere, not good for apartments).
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let adaptabilityLevel_Rationale: String

    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Trainability Level' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating (e.g., intelligent, eager to please, independent, stubborn).
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let trainabilityLevel_Rationale: String

    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Energy Level' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating, linking it to their working group (e.g., herding, hunting, lap dog).
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let energyLevel_Rationale: String

    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Barking Level' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating (e.g., bred to be alert watchdogs, bred to be quiet hunters, etc.).
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let barkingLevel_Rationale: String

    @Guide(
        description: """
            You will be given a preference rating (1-5) and the breed's rating (1-5) for the 'Mental Stimulation Needs' category.
            1. State both ratings clearly (e.g., "Preference: , Breed Rating: ").
            2. Provide a 1-2 sentence explanation for *why* the breed has its rating, linking it to their intelligence or working history (e.g., high intelligence means they get bored easily).
            3. Analyze how well the breed's rating matches the provided preference rating.
            Talk directly and do not use the word 'User'.
            """
    )
    let mentalStimulationNeeds_Rationale: String
    
    
    var allGeneratedCategories: [String] {
        [
            affectionateWithFamily_Rationale,
            goodWithYoungChildren_Rationale,
            goodWithOtherDogs_Rationale,
            sheddingLevel_Rationale,
            coatGroomingFrequency_Rationale,
            droolingLevel_Rationale,
            opennessToStrangers_Rationale,
            playfulnessLevel_Rationale,
            watchdogProtectiveNature_Rationale,
            adaptabilityLevel_Rationale,
            trainabilityLevel_Rationale,
            energyLevel_Rationale,
            barkingLevel_Rationale,
            mentalStimulationNeeds_Rationale
        ]
    }
}
