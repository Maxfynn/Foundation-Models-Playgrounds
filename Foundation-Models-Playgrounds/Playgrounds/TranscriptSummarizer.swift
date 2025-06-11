//
//  TranscriptSummarizer.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(instructions: "Summarize our transcript at the end.")
    let _ = try await session.respond(to: "Explain relativity in two lines")
    let summary = try await session.respond(to: "Summarize the conversation")
}
