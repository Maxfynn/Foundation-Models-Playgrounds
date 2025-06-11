//
//  GuidedPrompt.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let guide = Guide("Summarize input in one line")
    let session = LanguageModelSession(instructions: "Use the guide to answer.")
    let response = try await session.respond(to: "Explain foundation models", guide: guide)
}
