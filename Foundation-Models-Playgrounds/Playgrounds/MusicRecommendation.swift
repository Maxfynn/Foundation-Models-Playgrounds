//
//  MusicRecommendation.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Music suggestion")
struct MusicSuggestion {
    var track: String
    var artist: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Recommend an upbeat song for exercising")
    let music = try await session.respond(to: prompt, generating: MusicSuggestion.self)
}
