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
                   Describe how the well the affectionate With Family category matched up.State what the users rating for the category, and the rating for the breed in the answer. Talk directly dont address as 'User'
            """
    )
    let affectionateWithFamily_Rationale: String
    
    @Guide(
        description: """
                   Describe how the well the good With Young Children category matched up.State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
            """
    )
    let goodWithYoungChildren_Rationale: String

    @Guide(
        description: """
                   Describe how the well the good With Other Dogs category matched up.State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
            """
    )
    let goodWithOtherDogs_Rationale: String

    @Guide(
        description: """
                   Describe how the well the shedding Level category matched up. State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
            """
    )
    let sheddingLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the coat Grooming Frequency category matched up.State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
            """
    )
    let coatGroomingFrequency_Rationale: String

    @Guide(
        description: """
                   Describe how the well the drooling Level category matched up.State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
            """
    )
    let droolingLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the openness To Strangers category matched up.State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
            """
    )
    let opennessToStrangers_Rationale: String

    @Guide(
        description: """
                   Describe how the well the playfulness Level category matched up.State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
            """
    )
    let playfulnessLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the watchdog Protective Nature category matched up.State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
            """
    )
    let watchdogProtectiveNature_Rationale: String

    @Guide(
        description: """
                   Describe how the well the adaptability Level category matched up.State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
            """
    )
    let adaptabilityLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the trainability Level category matched up.State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
            """
    )
    let trainabilityLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the energy Level category matched up.State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
            """
    )
    let energyLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the barking Level category matched up.State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
            """
    )
    let barkingLevel_Rationale: String

    @Guide(
        description: """
                   Describe how the well the mental Stimulation Needs category matched up. State what the users rating for the category, and the rating for the breed in the answer.Talk directly dont address as 'User'
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
