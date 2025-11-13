//
//  NoAiExplanationView.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 11/2/25.
//

import SwiftUI

struct NoAiExplanationView: View {
    @EnvironmentObject var viewModel: ViewModel
    @State var breed: Breed
    @State var input: UserInput
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                CompareCell(categoryTitle: "Affectionate With Family", breedCategory_Level: breed.affectionateWithFamily, inputCategory_Level: input.affectionateWithFamily)
                CompareCell(categoryTitle: "Good With Young Children", breedCategory_Level: breed.goodWithYoungChildren, inputCategory_Level: input.goodWithYoungChildren)
                CompareCell(categoryTitle: "Good With Other Dogs", breedCategory_Level: breed.goodWithOtherDogs, inputCategory_Level: input.goodWithOtherDogs)
                CompareCell(categoryTitle: "Shedding Level", breedCategory_Level: breed.sheddingLevel, inputCategory_Level: input.sheddingLevel)
                CompareCell(categoryTitle: "Coat Grooming Frequency", breedCategory_Level: breed.coatGroomingFrequency, inputCategory_Level: input.coatGroomingFrequency)
                CompareCell(categoryTitle: "Drooling Level", breedCategory_Level: breed.droolingLevel, inputCategory_Level: input.droolingLevel)
                CompareCell(categoryTitle: "Openness To Strangers", breedCategory_Level: breed.opennessToStrangers, inputCategory_Level: input.opennessToStrangers)
                CompareCell(categoryTitle: "Playfulness Level", breedCategory_Level: breed.playfulnessLevel, inputCategory_Level: input.playfulnessLevel)
                CompareCell(categoryTitle: "Watchdog / Protective Nature", breedCategory_Level: breed.watchdogProtectiveNature, inputCategory_Level: input.watchdogProtectiveNature)
                CompareCell(categoryTitle: "Adaptability Level", breedCategory_Level: breed.adaptabilityLevel, inputCategory_Level: input.adaptabilityLevel)
                CompareCell(categoryTitle: "Trainability Level", breedCategory_Level: breed.trainabilityLevel, inputCategory_Level: input.trainabilityLevel)
                CompareCell(categoryTitle: "Energy Level", breedCategory_Level: breed.energyLevel, inputCategory_Level: input.energyLevel)
                CompareCell(categoryTitle: "Barking Level", breedCategory_Level: breed.barkingLevel, inputCategory_Level: input.barkingLevel)
                CompareCell(categoryTitle: "Mental Stimulation Needs", breedCategory_Level: breed.mentalStimulationNeeds, inputCategory_Level: input.mentalStimulationNeeds)
            }
            .padding()
        }
    }
    
    
    struct CompareCell: View {
        @EnvironmentObject var viewModel: ViewModel
        @State var categoryTitle: String
        @State var breedCategory_Level: Int
        @State var inputCategory_Level: Int
        
        var body: some View {
            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Text(categoryTitle)
                        .font(.headline)
                    Spacer()
                    Text("#1 Breed: \(breedCategory_Level)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Text("You: \(inputCategory_Level)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }

                HStack(spacing: 8) {
                    ComparisonBar(value: breedCategory_Level)
                        .foregroundStyle(.orange)
                    ComparisonBar(value: inputCategory_Level)
                        .foregroundStyle(.orange)
                }
            }
            .padding(.vertical, 6)
        }
    }
    
    struct ComparisonBar: View {
        var value: Int
        private let maxValue: Int = 5

        var body: some View {
            GeometryReader { proxy in
                let width = proxy.size.width
                let clamped = max(0, min(value, maxValue))
                let fill = CGFloat(clamped) / CGFloat(maxValue)

                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(.quaternary)
                    RoundedRectangle(cornerRadius: 4)
                        .fill(.primary.opacity(0.2))
                        .frame(width: width * fill)
                }
            }
            .frame(height: 8)
        }
    }
    
}

