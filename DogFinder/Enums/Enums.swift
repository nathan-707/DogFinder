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
