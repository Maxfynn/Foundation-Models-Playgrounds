//
//  DailyMotivation.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You provide motivational quotes."
    let session = LanguageModelSession(instructions: instruction)
    let options = GenerationOptions(temperature: 0.7, maximumResponseTokens: 1000)
    let prompts = [
        "Give me a short motivational quote to start the day."
    ]
    let response = try await session.respond(to: prompts[0], options: options)
}
