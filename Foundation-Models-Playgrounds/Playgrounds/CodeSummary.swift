//
//  CodeSummary.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You summarize code."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.2, maximumResponseTokens: 1000)
    let prompts = [
        "Summarize what the following code does: `for i in 0..<5 { print(i) }`"
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
