//
//  MemorySummary.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/13/25.
//


import FoundationModels
import Playgrounds

@Generable(description: "Short summary suitable for long‑term memory storage.")
struct MemorySummary {
    @Guide(description: "facts distilled from the dialogue chunk.")
    var summary: String
    @Guide(description: "estimated for the summary.")
    var tokenCount: Int
}

#Playground {
    let longDialog = """
    USER: I just got back from a hiking trip in Patagonia. It was amazing! I especially loved Fitz Roy.
    BOT: That's wonderful! How long was your trek?
    USER: About 7 days. I want to plan another one next year, maybe in the Alps.
    """

    let instruction = """
    Compress the dialog to ≤50 tokens while preserving user preferences and intentions.
    Estimate the token count.
    """
    let session = LanguageModelSession(instructions: instruction)
    let mem = try await session.respond(to: Prompt(longDialog), generating: MemorySummary.self)
}
