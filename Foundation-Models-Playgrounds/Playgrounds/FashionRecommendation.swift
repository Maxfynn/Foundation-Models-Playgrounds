//
//  FashionRecommendation.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Outfit suggestion")
struct OutfitSuggestion {
    var occasion: String
    var items: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Suggest an autumn outfit for a casual dinner")
    let outfit = try await session.respond(to: prompt, generating: OutfitSuggestion.self)
}
