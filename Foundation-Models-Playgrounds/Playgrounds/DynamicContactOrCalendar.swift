//
//  DynamicContactOrCalendar.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/21/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(
        tools: [ContactSearchTool(), CalendarEventTool()],
        instructions: "Use contact lookup or calendar scheduling based on each request."
    )

    try await session.respond(to: "Sara: What's Jane Doe's phone number?")
    try await session.respond(to: "Mike: Schedule our project sync for 2026-09-01T10:00:00Z")
}
