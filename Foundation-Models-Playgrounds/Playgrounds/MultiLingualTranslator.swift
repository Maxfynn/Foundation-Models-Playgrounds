//
//  MultiLingualTranslator.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(instructions: "Translate between multiple languages.")
    let text = "Hello, how are you?"
    let response = try await session.respond(to: text, guide: Guide("Translate to Spanish"))
}
