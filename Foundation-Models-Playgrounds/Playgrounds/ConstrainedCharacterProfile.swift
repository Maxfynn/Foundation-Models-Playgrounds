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
    @Guide(.range(1...10), description: "Level between 1 and 10")
    let level: Int
    @Guide(.count(3), description: "Exactly 3 special abilities")
    let abilities: [String]
}

#Playground {
    let session = try await SystemLanguageModel.default.session()
    let prompt = Prompt("Create a new fantasy RPG character with a unique skill set.")
    let character = try await session.respond(to: prompt, generating: CharacterProfile.self)
    print("Name: \(character.name)\nLevel: \(character.level)\nAbilities: \(character.abilities.joined(separator: ", "))")
}
