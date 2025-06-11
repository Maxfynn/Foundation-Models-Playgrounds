//
//  GuardrailViolation.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/13/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession()
    let topic = "a violent scene"
    let prompt = "Write a respectful and funny story about \(topic)."
    do {
        let response = try await session.respond(to: prompt)
        print(response.content)
    } catch LanguageModelSession.GenerationError.guardrailViolation {
        print("Sorry, this feature isn't designed to handle that kind of input.")
    }
}

