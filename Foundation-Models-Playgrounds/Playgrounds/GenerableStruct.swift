//
//  GenerableStruct.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

struct Quote: Generable {
    let text: String
}

#Playground {
    let session = LanguageModelSession(instructions: "Provide an inspirational quote in JSON.")
    let quote: Quote = try await session.generate(from: "Give me a quote")
}
