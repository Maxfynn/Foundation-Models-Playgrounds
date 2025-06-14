//
//  ProceduralTexture.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/14/25.
//


import FoundationModels
import Playgrounds

@Generable(description: "Simple procedural material description for RealityKit.")
struct ProceduralTexture: Codable {
    var baseColor: String           // hex or CSS name
    var roughness: Float            // 0 (smooth) – 1 (rough)
    var metallic: Float             // 0 – 1
    var normalIntensity: Float      // 0 – 2
    var pattern: String?            // e.g. "stripes", "marble"
}

/// LLM output model.
@Generable(description: "Procedural material parameters derived from text adjectives.")
struct TextureRecipe {
    var adjectives: [String]
    var texture: ProceduralTexture
    @Guide(description: "Tips for further tweaking in Reality Composer Pro.")
    var authorNotes: String
}

#Playground {
    let description = "matte dusty rose clay with subtle horizontal grooves"

    let instruction = """
    Turn the adjective phrase into a procedural material recipe suitable for RealityKit’s `SimpleMaterial`.
    Fill `ProceduralTexture` fields; choose pattern names that standard shaders can emulate.
    """

    let session = LanguageModelSession(instructions: instruction)
    let recipe = try await session.respond(
        to: Prompt(description),
        generating: TextureRecipe.self
    )
}
