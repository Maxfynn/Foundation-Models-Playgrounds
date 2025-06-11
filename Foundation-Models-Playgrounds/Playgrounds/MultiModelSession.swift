//
//  MultiModelSession.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(model: .init(named: "ModelA"))
    let altSession = LanguageModelSession(model: .init(named: "ModelB"))
    let first = try await session.respond(to: "Explain photosynthesis")
    let second = try await altSession.respond(to: "Summarize in one sentence: \(first)")
}
