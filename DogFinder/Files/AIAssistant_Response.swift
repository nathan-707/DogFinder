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
                   Describe how the well the affectionateWithFamily category matched up.
            """
    )
    let affectionateWithFamily_Rationale: String
    
    @Guide(
        description: """
                   Describe how the well the goodWithYoungChildren category matched up.
            """
    )
    let goodWithYoungChildren_Rationale: String

    @Guide(
        description: """
                   Describe how the well the goodWithOtherDogs category matched up.
            """
    )
    let goodWithOtherDogs_Rationale: String

    @Guide(
        description: """
                   Describe how the well the sheddingLevel category matched up.
            """
    )
    let sheddingLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the coatGroomingFrequency category matched up.
            """
    )
    let coatGroomingFrequency_Rationale: String

    @Guide(
        description: """
                   Describe how the well the droolingLevel category matched up.
            """
    )
    let droolingLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the opennessToStrangers category matched up.
            """
    )
    let opennessToStrangers_Rationale: String

    @Guide(
        description: """
                   Describe how the well the playfulnessLevel category matched up.
            """
    )
    let playfulnessLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the watchdogProtectiveNature category matched up.
            """
    )
    let watchdogProtectiveNature_Rationale: String

    @Guide(
        description: """
                   Describe how the well the adaptabilityLevel category matched up.
            """
    )
    let adaptabilityLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the trainabilityLevel category matched up.
            """
    )
    let trainabilityLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the energyLevel category matched up.
            """
    )
    let energyLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the barkingLevel category matched up.
            """
    )
    let barkingLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the mentalStimulationNeeds category matched up.
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
