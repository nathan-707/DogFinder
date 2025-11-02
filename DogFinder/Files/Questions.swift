//
//  Questions.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 10/14/25.
//

import Foundation
import SwiftUI

struct Question: Identifiable {
    var question: String
    var answer_Type: AnswerTypes
    var answer_Units: String
    var answer_Upperbound: Int?
    var answer_Lowerbound: Int = 1
    var answer_SelectorOptions: [String]?
    var isAnswered: Bool = false
    var answer: Int
    var questionCategory: QuestionCategory
    var id: UUID = UUID()
    

    init(
        question: String,
        answer_Type: AnswerTypes,
        answer_Units: String,
        answer_Upperbound: Int?,
        answer_Lowerbound: Int?,
        answer_Options: [String]? = nil,
        questionCategory: QuestionCategory

    ) {
        self.question = question
        self.answer_Type = answer_Type
        self.answer_Units = answer_Units
        self.answer_Upperbound = answer_Upperbound
        self.answer_Lowerbound = answer_Lowerbound ?? 1
        self.answer_SelectorOptions = answer_Options
        self.isAnswered = false
        // Default answer: first option if provided, otherwise "0"
        self.answer = 1
        self.questionCategory = questionCategory
        self.id = UUID()
    }
}
