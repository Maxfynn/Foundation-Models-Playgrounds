//
//  MathProblemSolver.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Solution to a math problem with steps")
struct MathSolution {
    var solution: String
    @Guide(description: "Step-by-step explanation")
    var steps: [String]
}

#Playground {
    let instruction = "You solve math problems step by step."
    let session = LanguageModelSession(instructions: instruction)
    let prompt = Prompt("Solve for x: 2x + 3 = 11")
    let answer = try await session.respond(to: prompt, generating: MathSolution.self)
}
