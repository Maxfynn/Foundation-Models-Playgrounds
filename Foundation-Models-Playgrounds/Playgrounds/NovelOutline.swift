//
//  NovelOutline.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You outline novels."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.5, maximumResponseTokens: 1000)
    let prompts = [
        "Provide a brief outline for a science fiction novel set on Mars."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
