//
//  RecipeMaker.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You create recipes."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.5, maximumResponseTokens: 1000)
    let prompts = [
        "Provide a simple recipe for chocolate chip cookies."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
