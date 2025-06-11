//
//  DynamicGameDifficultyOrCalendar.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/21/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(
        tools: [GameDifficultyTool(), CalendarEventTool()],
        instructions: "Adjust game difficulty or add calendar events based on the conversation."
    )

    try await session.respond(to: "Ethan: Set the game difficulty to 4.")
    try await session.respond(to: "Sophia: Add dinner with Alex on 2026-10-05T19:00:00Z")
}
