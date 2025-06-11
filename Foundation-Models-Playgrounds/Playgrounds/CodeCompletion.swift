//
//  CodeCompletion.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You generate Swift code."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.1, maximumResponseTokens: 1000)
    let prompts = [
        "Write a Swift function that calculates the factorial of a number."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
