//
//  Enums.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/14/25.
//

import Foundation

enum AnswerTypes {
    case slider, wheelPicker, pallatePicker
}
enum Views {
    case mainMenu, questionView, resultView, breedCatalogView
}

//let affectionateWithFamily: Int
//let goodWithYoungChildren: Int
//let goodWithOtherDogs: Int
//let sheddingLevel: Int
//let coatGroomingFrequency: Int
//let droolingLevel: Int
//
//
//let opennessToStrangers: Int
//let playfulnessLevel: Int
//let watchdogProtectiveNature: Int
//let adaptabilityLevel: Int
//let trainabilityLevel: Int
//let energyLevel: Int
//let barkingLevel: Int
//let mentalStimulationNeeds: Int

enum QuestionCategory {
    case affectionateWithFamily,
        goodWithYoungChildren,
        goodWithOtherDogs,
        sheddingLevel,
        coatGroomingFrequency,
        droolingLevel,

        opennessToStrangers,
        playfulnessLevel,
        watchdogProtectiveNature,
        adaptabilityLevel,
        trainabilityLevel,
        energyLevel,
        barkingLevel,
        mentalStimulationNeeds
}
