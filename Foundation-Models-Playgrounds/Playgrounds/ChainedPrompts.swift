//
//  ChainedPrompts.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(instructions: "Answer step by step.")
    let options = GenerationOptions(temperature: 0.2, maximumResponseTokens: 1000)
    let first = try await session.respond(to: "Generate a headline", options: options)
    let second = try await session.respond(to: "Write a short article based on \(first)", options: options)
}
