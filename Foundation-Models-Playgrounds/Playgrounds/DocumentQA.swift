//
//  DocumentQA.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let document = "Foundation models can be adapted to many tasks."
    let session = LanguageModelSession(instructions: "Answer questions about the document.")
    let answer = try await session.respond(to: "What can foundation models do?", context: document)
}
