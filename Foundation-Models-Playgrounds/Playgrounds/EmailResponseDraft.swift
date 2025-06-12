//
//  EmailResponseDraft.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You write concise email replies."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.3, maximumResponseTokens: 1000)
    let prompts = [
        "Draft a short reply thanking a colleague for sending the meeting notes."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
