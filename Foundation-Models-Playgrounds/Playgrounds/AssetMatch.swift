//
//  AssetMatch.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/14/25.
//

import FoundationModels
import Playgrounds

@Generable(description: "Representation of a candidate asset.")
struct AssetMatch: Codable {
    var fileName: String
    @Guide(description: "0-1")
    var similarityScore: Float
    @Guide(description: "Why this asset matches the prompt.")
    var rationale: String
}

let catalog = """
BlueVase.usdz – blue ceramic vase, 25 cm tall
RedCup.usdz – red plastic cup
GreenPlant.usdz – leafy potted plant
WoodTable.usdz – oak coffee table
"""

@Generable(description: "Chosen USDZ asset and ranked alternatives: \(catalog)")
struct AssetSelection {
    var bestMatch: AssetMatch
    var runnersUp: [AssetMatch]
}

#Playground {

    let userPrompt = "Place a small blue ceramic vase on the shelf."

    let instruction = """
    You match user prompts to a local USDZ catalog. Score 0‑1 by visual/textual similarity.
    Provide best match + three runners‑up. Use file names exactly as listed.
    """

    let session = LanguageModelSession(instructions: instruction)
    let selection = try await session.respond(
        to: Prompt(userPrompt),
        generating: AssetSelection.self
    )
}
