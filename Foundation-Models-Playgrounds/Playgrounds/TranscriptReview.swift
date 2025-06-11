//
//  TranscriptReview.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(instructions: "Track the transcript of our conversation.")
    let options = GenerationOptions(temperature: 0.3, maximumResponseTokens: 1000)
    _ = try await session.respond(to: "Hello", options: options)
    _ = try await session.respond(to: "How are you?", options: options)
    let transcript = session.transcript
}
