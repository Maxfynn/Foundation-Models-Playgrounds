//
//  CodingChallengeGenerator.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Programming challenge with a hint")
struct CodingChallenge {
    var challenge: String
    var hint: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Give me a beginner Swift programming challenge")
    let challenge = try await session.respond(to: prompt, generating: CodingChallenge.self)
}
