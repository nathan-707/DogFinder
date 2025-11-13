//
//  ResultView.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/17/25.
//

import FoundationModels
import SwiftUI

struct ResultView: View {
    @EnvironmentObject private var viewModel: ViewModel

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Text("Your #1 Match:")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.orange)
                        .padding(.horizontal, 5)

                    if #available(iOS 26.0, *) {
                        if aiAssistant?.session.isResponding == true {
                            ProgressView()
                        }
                    }
                }
                
                
                Text(viewModel.bestMatches.first!.breedName)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.horizontal, 5)


                ScrollView {
                    
                    

                    ForEach(
                        Array(
                            viewModel.bestMatches.dropFirst().enumerated()
                        ),
                        id: \.offset
                    ) { index, item in

                        HStack {
                            Text("#" + String(index + 2) + ": ").font(.caption2)
                            Text(item.breedName).font(.caption2)
                            Spacer()
                            
                        }.foregroundStyle(.orange)

                    }

                    if aiIsEnabled {
                        if #available(iOS 26.0, *) {
                            AiExplanationView()
                        }
                    } else {
                        NoAiExplanationView(
                            breed: viewModel.bestMatches.first!,
                            input: viewModel.userInput!
                        )
                    }

                    if #available(iOS 26.0, *) {
                        if aiAssistant?.session.isResponding == false
                            || aiIsEnabled == false
                        {
                            Button {
                                heavyImpact.impactOccurred()
                                viewModel.currentView = .questionView

                            } label: {
                                Text("Start Again")
                            }
                            .controlSize(.large)
                            .buttonStyle(.borderedProminent)
                            .tint(defaultUIColor)
                            .foregroundStyle(.white)
                            .padding(12)
                            .font(.headline)
                        }
                    } else {
                        Button {
                            heavyImpact.impactOccurred()
                            viewModel.currentView = .questionView

                        } label: {
                            Text("Start Again")
                        }
                        .controlSize(.large)
                        .buttonStyle(.borderedProminent)
                        .tint(defaultUIColor)
                        .foregroundStyle(.white)
                        .padding(12)
                        .font(.headline)
                    }

                }
            }
        }
    }
}
