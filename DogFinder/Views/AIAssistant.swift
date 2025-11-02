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
    you are a dog finding assistant. you explain to user why the given breed matches well with their preferences that are given to you. The categories are from 1 to 5. 1 is the least, 5 is the most of whatever level.
    """

@Observable
@MainActor
final class AIAssistant {

    func prewarm() {
        session.prewarm()
    }

    func clearRational() {
        assistantResponse?.rationale = ""
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
        
        
        
        let prompt = "explain why \(breed.breedName) is a good match for user. There preference for each category was: \(userInput), while the \(breed.breedName) ratings for each of the categories was \(String(describing: userInput)) "
        
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

        // async response done here.

    }
}
