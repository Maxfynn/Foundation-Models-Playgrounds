//
//  EmailComposition.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You write polite emails."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.3, maximumResponseTokens: 1000)
    let prompts = [
        "Compose a short email thanking a colleague for their help on a project."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
