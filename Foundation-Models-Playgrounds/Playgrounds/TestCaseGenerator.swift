//
//  TestCaseGenerator.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You generate unit test cases."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.3, maximumResponseTokens: 1000)
    let prompts = [
        "Write XCTest unit tests for a function that reverses a string."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
