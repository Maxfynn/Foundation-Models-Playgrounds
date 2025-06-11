//
//  ExplainConcept.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You explain technical concepts."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.3, maximumResponseTokens: 1000)
    let prompts = [
        "Explain the difference between concurrency and parallelism."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
