//
//  Summarize.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You are a summarization assistant."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.2, maximumResponseTokens: 1000)
    let prompts = [
        "Summarize the following text in one paragraph: \"Foundation models are large-scale machine learning models trained on broad data that can be adapted to a wide range of tasks.\""
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
