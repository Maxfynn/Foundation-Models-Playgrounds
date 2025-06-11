//
//  ChatInstructions.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = try await SystemLanguageModel.default.session()
    let prompt = Prompt("What are the top 3 highlights of WWDC 2025?")
    let instructions = "You are a tech news assistant. Answer concisely in one paragraph."
    let response = try await session.respond(to: prompt, instructions: instructions)
    print(response.content)
}
