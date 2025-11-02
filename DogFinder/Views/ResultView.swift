//
//  ResultView.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/17/25.
//

import SwiftUI

struct ResultView: View {
    @EnvironmentObject private var viewModel: ViewModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            Text("Your Best Match: \(viewModel.bestMatch?.breedName ?? "")")
                .font(.title)
                .bold()
            
            
        }
    }
}

            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
//            ScrollView {
//                Text(
//                    "Based on your answers, the Australian Shepherd is a great fit for you.\n\n" +
//                    "Why this match?\n" +
//                    "• High energy and loves activity — perfect if you enjoy an active lifestyle and want a companion for hikes, runs, or training games.\n" +
//                    "• Highly intelligent and eager to learn — great if you’re interested in training, mental enrichment, and teaching new tricks.\n" +
//                    "• Affectionate and people‑oriented — ideal if you’re looking for a loyal, family‑friendly dog that bonds closely with their person.\n"
//                  
//                )
//                .font(.body)
//                .foregroundStyle(.secondary)
//            }
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
//       
//        }
//        .padding()
//    }
//}
