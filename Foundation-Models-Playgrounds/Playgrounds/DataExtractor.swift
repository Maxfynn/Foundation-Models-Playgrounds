//
//  DataExtractor.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(instructions: "Extract names from text as a list.")
    let text = "Alice and Bob went to the market with Charlie."
    let response = try await session.respond(to: text)
}
