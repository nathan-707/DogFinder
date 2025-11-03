//
//  AllQuestions.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/14/25.
//

import Foundation

let questions: [Question] = [
    Question(
        question: "How much adaptability do you want out of your dog?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .adaptabilityLevel
    ),

    Question(
        question: "How affectionate do you want your dog to be with family?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .affectionateWithFamily
    ),

    Question(
        question: "How well should your dog get along with young children?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .goodWithYoungChildren
    ),

    Question(
        question: "How friendly should your dog be with other dogs?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .goodWithOtherDogs
    ),

    Question(
        question: "How much shedding are you ok with?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .sheddingLevel
    ),

    Question(
        question: "How much time are you willing to spend on coat grooming?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .coatGroomingFrequency
    ),

    Question(
        question: "How tolerant are you of drooling?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .droolingLevel
    ),

    Question(
        question: "How open to strangers should your dog be?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .opennessToStrangers
    ),

    Question(
        question: "How playful do you want your dog to be?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .playfulnessLevel
    ),

    Question(
        question: "How strong should your dog's watchdog/protective nature be?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .watchdogProtectiveNature
    ),

    Question(
        question: "How trainable do you want your dog to be?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .trainabilityLevel
    ),

    Question(
        question: "How much daily energy should your dog have?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .energyLevel
    ),

    Question(
        question: "How much barking are you comfortable with?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .barkingLevel
    ),

    Question(
        question: "How much mental stimulation should your dog require?",
        answer_Type: .pallatePicker,
        answer_Units: "",
        answer_Upperbound: 5,
        answer_Lowerbound: 1,
        questionCategory: .mentalStimulationNeeds
    ),


]
