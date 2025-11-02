//
//  AIAssistant_Response.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 11/2/25.
//

import FoundationModels

@available(iOS 26, *)

@Generable
struct AIResponse {

    @Guide(
        description: """
                   explain why the breed matches well with their preferences.
            """
    )
    let rationale: String
}
