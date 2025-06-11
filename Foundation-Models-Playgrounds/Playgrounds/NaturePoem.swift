//
//  NaturePoem.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You craft poems."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.8, maximumResponseTokens: 1000)
    let prompts = [
        "Write a short poem about nature."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
