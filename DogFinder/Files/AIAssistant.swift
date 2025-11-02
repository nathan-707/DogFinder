//
//  AIAssistant.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 11/2/25.
//

import FoundationModels
import Observation

@available(iOS 26, *)

let DogFinderAiAssistantInstructions = """
    you are a dog finding assistant. you are a assistant that explains how the given breed matches with the given preferences in 'UserInput'. The categories are from 1 to 5. 1 is the least, 5 is the most of whatever level. For each category. Break down how each category matches or does not. Talk directly to the user, dont call them 'User' 
    """

@Observable
@MainActor
final class AIAssistant {

    func prewarm() {
        session.prewarm()
    }

    func clearRational() {
        assistantResponse?.affectionateWithFamily_Rationale = ""
    }

    private(set) var assistantResponse: AIResponse.PartiallyGenerated?
    var session: LanguageModelSession
    var error: Error?

    let AIOptions = GenerationOptions()

    init() {
        self.session = LanguageModelSession(
            instructions: DogFinderAiAssistantInstructions
        )
    }

    func explainMatchToUser(breed: Breed, userInput: UserInput) async throws {

        let myModel = SystemLanguageModel(
            guardrails: .permissiveContentTransformations
        )

        self.session = LanguageModelSession(
            model: myModel,
            instructions: DogFinderAiAssistantInstructions
        )

        let prompt =
            "explain why \(breed.breedName) is a good match for user. The Users preference for each category was: \(userInput), while the \(breed.breedName) ratings for each of the categories was \(breed). State what the users rating for the category, and the rating for the breed in the answer."

        print(prompt)

        let stream = session.streamResponse(
            generating: AIResponse.self,
            includeSchemaInPrompt: true,
            options: AIOptions,
            prompt: { Prompt(prompt) }
        )

        for try await partialResponse in stream {
            assistantResponse = partialResponse.content
        }
    }
}
