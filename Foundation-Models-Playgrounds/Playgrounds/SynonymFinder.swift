//
//  SynonymFinder.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You find synonyms for words."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.0, maximumResponseTokens: 1000)
    let prompts = [
        "Provide three synonyms for the word 'happy'."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
