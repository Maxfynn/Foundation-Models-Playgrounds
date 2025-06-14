//
//  ImagePrompt.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/13/25.
//

import FoundationModels
import Playgrounds

@Generable(description: "Image generation prompt with style guidance.")
struct ImagePrompt {
    @Guide(description: "prompt to feed into an image‑generation model.")
    var prompt: String
    @Guide(description: "Recommended aspect ratio (e.g. \"16:9\").")
    var ratio: String
    @Guide(description: "Artistic style keywords.")
    var style: [String]
}

#Playground {
    let theme = "Cyberpunk cityscape at dawn"
    let instruction = """
    Generate a stable‑diffusion style prompt from a theme.
    Include cinematic composition guidance and 3‑5 artistic style words.
    """
    let session = LanguageModelSession(instructions: instruction)
    let result = try await session.respond(to: Prompt(theme), generating: ImagePrompt.self)
}
