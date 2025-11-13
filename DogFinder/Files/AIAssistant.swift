//
//  AIAssistant.swift
//  DogFinder
//
//  Created by Nathan Eriksen on 11/2/25.
//

import FoundationModels
import Observation


let DogFinderAiAssistantInstructions = """
    You are a dog finding assistant. Your role is to explain how a specific breed compares to the preferences in 'UserInput'.

    You will be given a breed name and a 'UserInput' JSON object with preference categories. The scale for all categories is 1 to 5 (1=least, 5=most).

    Your response must follow this structure for each category:

    1.  **State the Breed's Trait:** First, clearly state the breed's typical score for that category.
        * *Example: "Energy Level: The Beagle is a 4/5."*

    2.  **Provide Specific Info & Context:** Give a 1-2 sentence explanation for *why* the breed has that score, relating it to their history, temperament, or physical needs.
        * *Example: "Beagles are scent hounds bred for long hunts, so they have high stamina and require a lot of daily activity."*

    3.  **Analyze the Match:** Compare the breed's score (from step 1) to the preference in 'UserInput'. Explain in simple terms whether it's a good match, a partial match, or a mismatch.

    **Tone:**
    * Talk directly and be encouraging.
    * Do not use the word 'User'.
    """
@available(iOS 26.0, *)
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
            useCase: .general, guardrails: .permissiveContentTransformations
        )

        self.session = LanguageModelSession(
            model: myModel,
            instructions: DogFinderAiAssistantInstructions,
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
