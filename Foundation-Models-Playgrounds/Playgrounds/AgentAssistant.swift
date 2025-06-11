//
//  AgentAssistant.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let agent = Agent(role: "assistant")
    let session = LanguageModelSession(instructions: "You help manage tasks.", agent: agent)
    let options = GenerationOptions(temperature: 0.5, maximumResponseTokens: 1000)
    let response = try await session.respond(to: "Organize my todo list", options: options)
}
