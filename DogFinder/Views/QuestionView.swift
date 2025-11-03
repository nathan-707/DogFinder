//
//  QuestionView.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/14/25.
//

import FoundationModels
import SwiftUI

var aiIsEnabled = false

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
                            .padding(.bottom,15)
                    }
                    
                    Divider()
                }
            }
            .padding()

            Button {
                heavyImpact.impactOccurred()
                startAiAnswer()
                viewModel.userInput = UsersAnswers()
                viewModel.bestMatch = findUserMatch(
                    userInput: viewModel.userInput!
                )
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
        }.onAppear {
            viewModel.finalRational = ""
        }
    }

    func startAiAnswer() {
        aiIsEnabled = setupAI()

        if aiIsEnabled {
            viewModel.aiAssistant = AIAssistant()
            Task {
                try await viewModel.aiAssistant!.explainMatchToUser(
                    breed: viewModel.bestMatch!,
                    userInput: viewModel.userInput!
                )

                viewModel.finalRational =
                    viewModel.aiAssistant?.assistantResponse?
                    .affectionateWithFamily_Rationale ?? ""
                print("AI DONE")
            }

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

    func setupAI() -> Bool {
        if #available(iOS 26, *) {
            let model = SystemLanguageModel.default
            switch model.availability {
            case .available:
                return true
            // Show your intelligence UI.
            case .unavailable(.deviceNotEligible):
                return false
            // Show an alternative UI.
            case .unavailable(.appleIntelligenceNotEnabled):
                return false
            // Ask the person to turn on Apple Intelligence.
            case .unavailable(.modelNotReady):
                return false
            // The model isn't ready because it's downloading or because of other system reasons.
            case .unavailable(_):
                return false
            // The model is unavailable for an unknown reason.

            }
        }
        return false
    }

}

//#Preview {
//    QuestionView()
//}
