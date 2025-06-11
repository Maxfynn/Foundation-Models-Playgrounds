//
//  FrenchTranslation.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You translate to French."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.0, maximumResponseTokens: 1000)
    let prompts = [
        "Translate this sentence to French: 'The quick brown fox jumps over the lazy dog.'"
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
