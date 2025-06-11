//
//  DebuggingInstructions.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You provide debugging instructions."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.2, maximumResponseTokens: 1000)
    let prompts = [
        "Explain how to troubleshoot a crashed SwiftUI app."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
