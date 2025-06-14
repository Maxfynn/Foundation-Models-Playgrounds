//
//  ExpandedThought.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/13/25.
//


import FoundationModels
import Playgrounds

@Generable(description: "Expands a concise answer into explicit reasoning steps.")
struct ExpandedThought {
    @Guide(description: "The original terse answer supplied by the user.")
    var original: String
    @Guide(description: "Step‑by‑step reasoning that leads from premises to the answer.")
    var chainOfThought: [String]
    @Guide(description: "A final, polished explanation synthesizing the steps.")
    var finalExplanation: String
}

#Playground {
    let instruction = """
    You are a tutor who always rewrites a short answer into an explicit chain of reasoning.
    Provide 3‑5 numbered reasoning steps followed by a concise synthesis.
    """
    let session = LanguageModelSession(instructions: instruction)
    let prompt = Prompt("Moonlight is reflected sunlight.")
    let result = try await session.respond(to: prompt, generating: ExpandedThought.self)
}
