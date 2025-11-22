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
        let attributeFont: Font = .caption2
        let desPadding: CGFloat = 40
        ScrollView {
            LazyVStack(alignment: .leading) {
                LazyVStack(alignment: .leading) {
                    ForEach(ALL_Breeds) { breed in

                        VStack(alignment: .leading) {

                            Text(String(breed.breedName)).font(.title)
                                .foregroundStyle(.orange).bold().padding(.bottom,10)

                            HStack {
                                Text("Adaptability: ")
                                    .font(attributeFont)

                                Spacer()

                                Text(String(breed.adaptabilityLevel)).font(
                                    attributeFont
                                ).bold().foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)

                            }

                            Divider()

                            HStack {
                                Text("Affectionate with Family: ")
                                    .font(attributeFont)
                                Spacer()

                                Text(String(breed.affectionateWithFamily))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }
                            Divider()

                            HStack {
                                Text("Barking Level: ")
                                    .font(attributeFont)
                                Spacer()
                                Text(String(breed.barkingLevel))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }
                            Divider()

                            HStack {
                                Text("Coat Grooming Frequency: ")
                                    .font(attributeFont)

                                Spacer()
                                Text(String(breed.coatGroomingFrequency))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }
                            Divider()

                            HStack {
                                Text("Drooling level: ")
                                    .font(attributeFont)

                                Spacer()
                                Text(String(breed.droolingLevel))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }
                            Divider()

                            HStack {
                                Text("Energy Level: ")
                                    .font(attributeFont)
                                Spacer()
                                Text(String(breed.energyLevel))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }
                            Divider()

                            HStack {
                                Text("Good With Other Dogs: ")
                                    .font(attributeFont)
                                Spacer()
                                Text(String(breed.goodWithOtherDogs))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }
                            Divider()

                            HStack {
                                Text("Good With Young Children: ")
                                    .font(attributeFont)
                                Spacer()
                                Text(String(breed.goodWithYoungChildren))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }
                            Divider()

                            HStack {
                                Text("Mental Stimulation Needs: ")
                                    .font(attributeFont)
                                Spacer()
                                Text(String(breed.mentalStimulationNeeds))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }
                            Divider()

                            HStack {
                                Text("Openness To Strangers: ")
                                    .font(attributeFont)
                                Spacer()
                                Text(String(breed.opennessToStrangers))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }
                            Divider()

                            HStack {
                                Text("Playfulness Level: ")
                                    .font(attributeFont)
                                Spacer()
                                Text(String(breed.playfulnessLevel))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }
                            Divider()

                            HStack {
                                Text("Shedding Level: ")
                                    .font(attributeFont)
                                Spacer()
                                Text(String(breed.sheddingLevel))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }
                            Divider()

                            HStack {
                                Text("Trainability Level: ")
                                    .font(attributeFont)
                                Spacer()
                                Text(String(breed.trainabilityLevel))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }
                            Divider()

                            HStack {
                                Text("Watchdog Protective Nature: ")
                                    .font(attributeFont)
                                Spacer()
                                Text(String(breed.watchdogProtectiveNature))
                                    .font(attributeFont)
                                    .bold()
                                    .foregroundStyle(.orange)
                                    .padding(.trailing, desPadding)
                            }

                        }.padding()
                    }
                }
            }
        }
    }
}

#Preview {
    BreedCatalogView()
}
