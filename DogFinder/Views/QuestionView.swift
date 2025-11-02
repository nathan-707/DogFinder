//
//  QuestionView.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/14/25.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject private var viewModel: ViewModel

    var body: some View {

        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ForEach($viewModel.editableQuestions) { $question in
                    VStack(alignment: .leading, spacing: 8) {
                        Text(question.question)
                            .font(.headline)
                            .bold()
                            .foregroundStyle(defaultUIColor)
                        InputView(question: $question)
                    }
                }

                HStack {

                    Button {
                        heavyImpact.impactOccurred()
                        viewModel.currentView = .mainMenu
                    } label: {
                        Text("Back")
                    }
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    .tint(defaultUIColor)
                    .foregroundStyle(.white)
                    .padding(12)
                    .font(.headline)

                    Button {
                        viewModel.bestMatch = findUserMatch(userInput: UsersAnswers())
                        heavyImpact.impactOccurred()
                        viewModel.currentView = .resultView

                    } label: {
                        Text("View Result")
                    }
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    .tint(defaultUIColor)
                    .foregroundStyle(.white)
                    .padding(12)
                    .font(.headline)

                }

            }
            .padding()
        }

    }

    func UsersAnswers() -> UserInput {

        var input = UserInput(
            affectionateWithFamily: 0,
            goodWithYoungChildren: 0,
            goodWithOtherDogs: 0,
            sheddingLevel: 0,
            coatGroomingFrequency: 0,
            droolingLevel: 0,
            opennessToStrangers: 0,
            playfulnessLevel: 0,
            watchdogProtectiveNature: 0,
            adaptabilityLevel: 0,
            trainabilityLevel: 0,
            energyLevel: 0,
            barkingLevel: 0,
            mentalStimulationNeeds: 0
        )

        for question in viewModel.editableQuestions {
            switch question.questionCategory {
            case .affectionateWithFamily:
                input.affectionateWithFamily = question.answer
            case .goodWithYoungChildren:
                input.goodWithYoungChildren = question.answer
            case .goodWithOtherDogs:
                input.goodWithOtherDogs = question.answer
            case .sheddingLevel:
                input.sheddingLevel = question.answer
            case .coatGroomingFrequency:
                input.coatGroomingFrequency = question.answer
            case .droolingLevel:
                input.droolingLevel = question.answer
            case .opennessToStrangers:
                input.opennessToStrangers = question.answer
            case .playfulnessLevel:
                input.playfulnessLevel = question.answer
            case .watchdogProtectiveNature:
                input.watchdogProtectiveNature = question.answer
            case .adaptabilityLevel:
                input.adaptabilityLevel = question.answer
            case .trainabilityLevel:
                input.trainabilityLevel = question.answer
            case .energyLevel:
                input.energyLevel = question.answer
            case .barkingLevel:
                input.barkingLevel = question.answer
            case .mentalStimulationNeeds:
                input.mentalStimulationNeeds = question.answer
            }
        }
        return input
    }
}

//#Preview {
//    QuestionView()
//}
