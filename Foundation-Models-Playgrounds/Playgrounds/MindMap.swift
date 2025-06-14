//
//  MindMap.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/13/25.
//


import FoundationModels
import Playgrounds

@Generable
struct Branch {
    var title: String
    var subtopics: [String]
}

@Generable(description: "Hierarchical outline representing a mind‑map.")
struct MindMap {
    @Guide(description: "topic.")
    var topic: String
    @Guide(description: "of first‑level branches, each with its own sub‑branches.")
    var branches: [Branch]
}

#Playground {
    let subject = "Renewable Energy"
    let instruction = "Create a mind‑map outline with 4‑6 branches and subtopics."
    let session = LanguageModelSession(instructions: instruction)

    let map = try await session.respond(
        to: Prompt(subject),
        generating: MindMap.self
    )
}
