//
//  BasicChat.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = try await SystemLanguageModel.default.session()
    let prompt = Prompt("Hello! Can you tell me a fun fact about Vision Pro?")
    let response = try await session.respond(to: prompt)
    print("AI says: \(response.content)")
}
