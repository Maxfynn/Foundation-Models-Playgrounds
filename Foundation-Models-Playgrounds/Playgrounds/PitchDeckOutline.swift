//
//  PitchDeckOutline.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Pitch deck slide")
struct PitchSlide {
    var title: String
    @Guide(description: "Bullet points for the slide", .count(1...5))
    var bullets: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Outline a startup pitch deck for a meal delivery app")
    let deck = try await session.respond(to: prompt, generating: [PitchSlide].self)
}
