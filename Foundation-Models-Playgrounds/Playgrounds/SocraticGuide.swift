//
//  SocraticGuide.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/13/25.
//


import FoundationModels
import Playgrounds

@Generable(description: "Series of Socratic questions to guide a learner.")
struct SocraticGuide {
    @Guide(description: "Original learning goal or concept.")
    var concept: String
    @Guide(description: "list of open‑ended questions (ideally 5‑8).")
    var questions: [String]
    @Guide(description: "Brief note on how the sequence scaffolds understanding.")
    var pedagogyRationale: String
}

#Playground {
    let concept = "Photosynthesis"
    let instruction = """
    Generate a sequence of probing, Socratic questions that would help a student independently grasp the core idea of '\(concept)'.
    Avoid directly giving facts—ask only questions that build from prior knowledge.
    """
    let session = LanguageModelSession(instructions: instruction)
    let guide = try await session.respond(
        to: Prompt(concept),
        generating: SocraticGuide.self
    )
}
