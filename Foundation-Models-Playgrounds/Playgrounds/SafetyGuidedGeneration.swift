//
//  SafetyGuidedGeneration.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/13/25.
//

import FoundationModels
import Playgrounds

@Generable
enum Breakfast {
    case waffles
    case pancakes
    case bagels
    case eggs
}

#Playground {
    let session = LanguageModelSession()
    let userInput = "I want something sweet."
    let prompt = "Pick the ideal breakfast for request: \(userInput)"
    let choice = try await session.respond(to: prompt, generating: Breakfast.self)
    print(choice)
}

