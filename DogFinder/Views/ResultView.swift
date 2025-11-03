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
                    Text("Your Best Match:")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.orange)
                        .padding(.horizontal, 5)

                    if viewModel.aiAssistant?.session.isResponding == true {
                        ProgressView()
                    }
                }

                Text(viewModel.bestMatch!.breedName)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.horizontal, 5)

                ScrollView {

                    if aiIsEnabled {
                        AiExplanationView()
                    } else {
                        NoAiExplanationView(
                            breed: viewModel.bestMatch!,
                            input: viewModel.userInput!
                        )
                    }

                    if viewModel.aiAssistant?.session.isResponding == false
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
                }
            }
        }
    }
}
