//
//  BreedCatalogView.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/30/25.
//

import SwiftUI

struct BreedCatalogView: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        let attributeFont: Font = .caption

        ScrollView {

        LazyVStack(alignment: .leading) {
            
                
                VStack(alignment: .leading) {
                    ForEach(ALL_Breeds) { breed in
                        VStack(alignment: .leading) {
                            Text(String(breed.breedName)).font(.title)
                                .foregroundStyle(.orange)
                            Text("Adaptability \(breed.adaptabilityLevel)")
                                .font(attributeFont)
                            Text(
                                "Affectionate with Family \(breed.affectionateWithFamily)"
                            ).font(attributeFont)

                            Text("Barking Level \(breed.barkingLevel)").font(
                                attributeFont
                            )
                            Text(
                                "Coat Grooming Frequency \(breed.coatGroomingFrequency)"
                            ).font(attributeFont)
                            Text("Drooling level \(breed.droolingLevel)").font(
                                attributeFont
                            )

                            Text("Energy Level \(breed.energyLevel)").font(
                                attributeFont
                            )
                            Text(
                                "Good With Other Dogs \(breed.goodWithOtherDogs)"
                            ).font(attributeFont)
                            Text(
                                "Good With Young Children \(breed.goodWithYoungChildren)"
                            ).font(attributeFont)
                            Text(
                                "Mental Stimulation Needs \(breed.mentalStimulationNeeds)"
                            ).font(attributeFont)
                            Text(
                                "Openness To Strangers \(breed.opennessToStrangers)"
                            ).font(attributeFont)
                            Text("Playfulness Level \(breed.playfulnessLevel)")
                                .font(attributeFont)
                            Text("Shedding Level \(breed.sheddingLevel)").font(
                                attributeFont
                            )
                            Text(
                                "Trainability Level \(breed.trainabilityLevel)"
                            ).font(attributeFont)
                            Text(
                                "Watchdog Protective Nature \(breed.watchdogProtectiveNature)"
                            ).font(attributeFont)

                        }.padding()
                    }
                }
            }

//            Button {
//                heavyImpact.impactOccurred()
//                viewModel.currentView = .mainMenu
//            } label: {
//                Text("Back")
//            }
//            .controlSize(.large)
//            .buttonStyle(.borderedProminent)
//            .tint(defaultUIColor)
//            .foregroundStyle(.white)
//            .padding(12)
//            .font(.headline)
        }
    }
}

#Preview {
    BreedCatalogView()
}
