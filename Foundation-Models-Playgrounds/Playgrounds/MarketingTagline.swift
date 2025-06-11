//
//  MarketingTagline.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You craft marketing taglines."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.6, maximumResponseTokens: 1000)
    let prompts = [
        "Create a catchy tagline for an eco-friendly water bottle."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
