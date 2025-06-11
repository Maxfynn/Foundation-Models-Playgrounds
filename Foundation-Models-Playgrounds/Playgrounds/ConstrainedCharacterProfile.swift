//
//  ConstrainedCharacterProfile.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

@Generable
struct CharacterProfile {
    @Guide(description: "Character name (first and last)")
    let name: String
    @Guide(description: "Level between 1 and 10", .range(1...10))
    let level: Int
    @Guide(description: "Exactly 3 special abilities", .count(3))
    let abilities: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Create a new fantasy RPG character with a unique skill set.")
    let character = try await session.respond(to: prompt, generating: CharacterProfile.self)
}
