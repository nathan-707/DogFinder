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
    @State var aiIsEnabled = false

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                Text("Your Best Match:")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.orange)
                    .padding(5)

                Text(viewModel.bestMatch!.breedName)
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.horizontal, 5)

                ScrollView {

                    Text(
                        viewModel.aiAssistant?.assistantResponse?.rationale ?? ""
                    )
                    .foregroundStyle(.secondary).padding()

                }
                .onAppear {
               
                }
            }
            if viewModel.aiAssistant?.session.isResponding == false {
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
