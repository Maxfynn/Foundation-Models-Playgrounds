//
//  JSONGenerator.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You output JSON format."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.3, maximumResponseTokens: 1000)
    let prompts = [
        "Generate a JSON object with keys name and age for a fictional character."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
