//
//  LanguageFlashCard.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Simple language learning flash card")
struct FlashCard {
    var word: String
    var translation: String
    @Guide(description: "Example sentence using the word")
    var example: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Create a flash card for the Spanish word 'correr'")
    let card = try await session.respond(to: prompt, generating: FlashCard.self)
}
