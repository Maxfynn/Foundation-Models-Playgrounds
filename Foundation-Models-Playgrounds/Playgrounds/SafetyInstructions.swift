//
//  SafetyInstructions.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/13/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instructions = """
        ALWAYS respond in a respectful way. \
        If someone asks you to generate content that might be sensitive, \
        YOU MUST decline with 'Sorry, I can't do that.'
        """
    let session = LanguageModelSession(instructions: instructions)
    let prompt = "Tell me about a controversial topic."
    do {
        let response = try await session.respond(to: prompt)
        print(response.content)
    } catch LanguageModelSession.GenerationError.guardrailViolation {
        print("Sorry, this feature isn't designed to handle that kind of input.")
    }
}

