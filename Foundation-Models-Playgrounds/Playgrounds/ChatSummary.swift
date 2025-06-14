//
//  ChatSummary.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/14/25.
//


import FoundationModels
import Playgrounds

/// One summary cycle (e.g. every 15 seconds).
@Generable(description: "Rolling summary of recent voice chat.")
struct ChatSummary {
    @Guide(description: "Speaker‑attributed bullet notes.")
    var bullets: [String]
    @Guide(description: "Open questions that emerged in the last interval.")
    var openQuestions: [String]
    @Guide(description: "Next‑step action items with owner names.")
    var actionItems: [String]
}

#Playground {
    // Transcribed snippet for demonstration.
    let transcript = """
    [Alex] Can we move the chart a bit higher?
    [Sam] Sure, I’ll nudge it 10 cm.
    [Jamie] Remember we still need a darker background later.
    """

    let instruction = """
    Summarize the last 15‑second voice transcript into:
    • speaker‑tagged bullets,
    • open questions (prefixed “?”),
    • action items with assignee.
    Return a `ChatSummary`.
    """

    let session = LanguageModelSession(instructions: instruction)
    let summary = try await session.respond(
        to: Prompt(transcript),
        generating: ChatSummary.self
    )
}
