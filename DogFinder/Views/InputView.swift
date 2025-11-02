//
//  InputView.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/14/25.
//

import SwiftUI

struct InputView: View {
    @Binding var question: Question

    var body: some View {
        HStack {
            if question.answer_Type == .slider {
                Picker(question.answer_Units, selection: $question.answer) {
                    ForEach(
                        Int(
                            question.answer_Lowerbound
                        )...Int(question.answer_Upperbound!),
                        id: \.self
                    ) {
                        Text("\($0)").tag(String($0))
                    }
                }
                .tint(pickerTint)

            } else if question.answer_Type == .wheelPicker {
                Picker(question.answer_Units, selection: $question.answer) {
                    ForEach(question.answer_SelectorOptions!, id: \.self) {
                        Text("\($0)").tag(String($0))
                    }
                }.pickerStyle(.wheel)

                    .tint(pickerTint)

            } else if question.answer_Type == .pallatePicker {

                Picker(question.answer_Units, selection: $question.answer) {
                    ForEach(question.answer_SelectorOptions!, id: \.self) {
                        Text("\($0)").tag(String($0))
                    }
                }
                .pickerStyle(.palette)

                .tint(pickerTint)
            }

            Text(question.answer_Units)
                .foregroundStyle(pickerTint)
        }
    }
}

//#Preview {
//    InputView(question: Question(question: "whats your name", answer_Type: .blank, answer_Units: "", answer_Upperbound: 0, answer_Lowerbound: 0))
//}
