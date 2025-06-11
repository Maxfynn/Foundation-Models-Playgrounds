//
//  ModelPrewarm.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    try await LanguageModelSession.prewarm(.init())
    let session = LanguageModelSession(instructions: "Model has been prewarmed.")
    let response = try await session.respond(to: "Is the model ready?")
}
