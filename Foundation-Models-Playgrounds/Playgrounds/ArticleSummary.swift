//
//  ArticleSummary.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You summarize articles in bullet points."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.2, maximumResponseTokens: 1000)
    let prompts = [
        "Summarize the key points from an article about renewable energy in five bullet points."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
