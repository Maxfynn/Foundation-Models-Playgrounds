//
//  MetadataTags.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/13/25.
//


import FoundationModels
import Playgrounds

@Generable(description: "Semantic tags for a document.")
struct MetadataTags {
    @Guide(description: "language code, e.g. \"en\".")
    var language: String
    @Guide(description: "sentiment: positive, neutral, negative.")
    var sentiment: String
    @Guide(description: "up to five topical keywords.")
    var keywords: [String]
}

#Playground {
    let instruction = "You label text with language, sentiment, and 1‑5 keywords."
    let session = LanguageModelSession(instructions: instruction)

    let doc = """
    Apple unveiled new spatial‑computing features at WWDC, thrilling developers worldwide.
    """

    let tags = try await session.respond(
        to: Prompt(doc),
        generating: MetadataTags.self
    )
}
