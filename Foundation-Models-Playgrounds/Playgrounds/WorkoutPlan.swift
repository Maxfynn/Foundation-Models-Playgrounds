//
//  WorkoutPlan.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You create workout plans."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.4, maximumResponseTokens: 1000)
    let prompts = [
        "Create a simple 30-minute full-body workout routine for beginners."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
