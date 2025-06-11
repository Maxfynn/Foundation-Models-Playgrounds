//
//  Haiku.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You write haikus."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.7, maximumResponseTokens: 1000)
    let prompts = [
        "Compose a haiku about the changing seasons."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
