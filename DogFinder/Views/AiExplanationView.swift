//
//  AiExplanationView.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 11/2/25.
//

import FoundationModels
import SwiftUI

struct AiExplanationView: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        VStack {
            CategoryExplainationCell(response: (viewModel.aiAssistant?.assistantResponse))
                .foregroundStyle(.secondary)
                .padding()
        }
    }

    struct CategoryExplainationCell: View {
        var response: AIResponse.PartiallyGenerated?

        private var generatedPairs: [(id: String, title: String, detail: String)] {
           
            guard let response = response else { return [] }

            // Build an ordered array of (id, title, detail) matching the order in AIResponse.allGeneratedCategories
            var items: [(id: String, title: String, detail: String)] = []

            let pairs: [(id: String, title: String, value: String?)] = [
                ("affectionateWithFamily_Rationale", "Affectionate With Family", response.affectionateWithFamily_Rationale),
                ("goodWithYoungChildren_Rationale", "Good With Young Children", response.goodWithYoungChildren_Rationale),
                ("goodWithOtherDogs_Rationale", "Good With Other Dogs", response.goodWithOtherDogs_Rationale),
                ("sheddingLevel_Rationale", "Shedding Level", response.sheddingLevel_Rationale),
                ("coatGroomingFrequency_Rationale", "Coat Grooming Frequency", response.coatGroomingFrequency_Rationale),
                ("droolingLevel_Rationale", "Drooling Level", response.droolingLevel_Rationale),
                ("opennessToStrangers_Rationale", "Openness To Strangers", response.opennessToStrangers_Rationale),
                ("playfulnessLevel_Rationale", "Playfulness Level", response.playfulnessLevel_Rationale),
                ("watchdogProtectiveNature_Rationale", "Watchdog / Protective Nature", response.watchdogProtectiveNature_Rationale),
                ("adaptabilityLevel_Rationale", "Adaptability Level", response.adaptabilityLevel_Rationale),
                ("trainabilityLevel_Rationale", "Trainability Level", response.trainabilityLevel_Rationale),
                ("energyLevel_Rationale", "Energy Level", response.energyLevel_Rationale),
                ("barkingLevel_Rationale", "Barking Level", response.barkingLevel_Rationale),
                ("mentalStimulationNeeds_Rationale", "Mental Stimulation Needs", response.mentalStimulationNeeds_Rationale)
            ]

            for (id, title, value) in pairs {
                if let detail = value, !detail.isEmpty {
                    items.append((id: id, title: title, detail: detail))
                }
            }
            return items
        }

        var body: some View {
            if generatedPairs.isEmpty {
                EmptyView()
            } else {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(generatedPairs, id: \.id) { pair in
                        VStack(alignment: .leading, spacing: 4) {
                            
                            Text(pair.title)
                                .font(.title2)
                                .foregroundStyle(.orange)
                                .bold()
                            
                            Text(pair.detail)
                                .font(.headline)
                                .foregroundStyle(.white)
                                .padding(10)
                                .background(
                                    RoundedRectangle(cornerRadius: 12, style: .continuous).fill(Color.orange)
                                ).glassEffectTransition(.materialize)
                                
                        }
                        Divider()
                    }
                }
            }
        }
    }
}

#Preview {
    AiExplanationView()
}
