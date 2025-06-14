//
//  CodeSnippet.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/14/25.
//


import FoundationModels
import Playgrounds

@Generable(description: "Swift code snippet boxed as a string.")
struct CodeSnippet: Codable {
    var swiftCode: String
}

@Generable(description: "Physics script and explanatory notes.")
struct PhysicsScript {
    var snippet: CodeSnippet
    @Guide(description: "High‑level explanation of what the code does and why chosen values are appropriate.")
    var explanation: String
}

#Playground {
    let naturalLanguage = """
    Make this sphere bounce realistically on the floor with slight bounciness and zero friction.
    Mass should be 0.3 kg and it should stop after 5 bounces.
    """

    let instruction = """
    Produce Swift code that attaches appropriate `PhysicsBodyComponent` and `PhysicsMaterialResource`
    to a `ModelEntity` named `sphere`. Use RealityKit API only; no ARView. Include damping for 5‑bounce stop.
    """

    let session = LanguageModelSession(instructions: instruction)
    let script = try await session.respond(
        to: Prompt(naturalLanguage),
        generating: PhysicsScript.self
    )
}
