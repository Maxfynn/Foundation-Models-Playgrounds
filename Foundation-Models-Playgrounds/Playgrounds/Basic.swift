//
//  Basic.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You are a helpful assistant."
    
    let session = LanguageModelSession(instructions: instruction)
    
    let options = GenerationOptions(
        temperature: 0.0,
        maximumResponseTokens: 2000
    )
    
    let prompts = [
        "Tell me a joke"
    ]
    
    let response = try await session.respond(to: prompts[0], options: options)
}
