//
//  SuperheroProfile.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Profile of a fictional superhero")
struct SuperheroProfile {
    var heroName: String
    var alias: String
    @Guide(description: "List of super powers", .count(1...5))
    var powers: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Create a new superhero with at least two powers")
    let hero = try await session.respond(to: prompt, generating: SuperheroProfile.self)
}
