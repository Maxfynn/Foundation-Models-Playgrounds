//
//  ShortStory.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You tell short stories."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.6, maximumResponseTokens: 1000)
    let prompts = [
        "Write a short story about a robot that learns to paint."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
