//
//  SlideDeck.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/13/25.
//

import FoundationModels
import Playgrounds


@Generable
struct Slide {
    var heading: String
    var bulletPoints: [String]
    @Guide(description: "Optional note for the speaker.")
    var speakerNote: String?
}

@Generable(description: "Auto‑generated slide deck outline.")
struct SlideDeck {
    /// Title slide (title + subtitle).
    var title: String
    var subtitle: String
    /// Array of slide objects.
    var slides: [Slide]
}

#Playground {
    let topic = "Quantum Computing 101"
    let instruction = """
    Create a 6‑slide beginner‑friendly deck: intro, 3 body slides, summary, and Q&A.
    Provide 3‑5 bullets per slide and a brief speaker note.
    """
    let session = LanguageModelSession(instructions: instruction)
    let deck = try await session.respond(to: Prompt(topic), generating: SlideDeck.self)
}
