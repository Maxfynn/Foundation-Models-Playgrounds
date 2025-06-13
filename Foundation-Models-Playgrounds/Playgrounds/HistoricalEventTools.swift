//
//  HistoricalEventTools.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/24/26.
//

import FoundationModels
import Playgrounds

struct HistoricalEventDateTool: Tool {
    let name = "eventDate"
    let description = "Give the date of a historical event"

    @Generable
    struct Arguments {
        @Guide(description: "Event name")
        var event: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "event": arguments.event,
            "date": "January 1, 1900"
        ])
        return ToolOutput(info)
    }
}

struct HistoricalEventLocationTool: Tool {
    let name = "eventLocation"
    let description = "Provide the location of a historical event"

    @Generable
    struct Arguments {
        @Guide(description: "Event name")
        var event: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "event": arguments.event,
            "location": "Somewhere on Earth"
        ])
        return ToolOutput(info)
    }
}

struct HistoricalEventFigureTool: Tool {
    let name = "eventFigure"
    let description = "Mention a key figure in a historical event"

    @Generable
    struct Arguments {
        @Guide(description: "Event name")
        var event: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "event": arguments.event,
            "figure": "Important Person"
        ])
        return ToolOutput(info)
    }
}

#Playground {
    let session = LanguageModelSession(
        tools: [HistoricalEventDateTool(), HistoricalEventLocationTool(), HistoricalEventFigureTool()],
        instructions: "Use historical tools for event questions"
    )

    try await session.respond(to: "When was the Example Event?")
    try await session.respond(to: "Where did the Example Event happen?")
    try await session.respond(to: "Name someone involved in the Example Event")
}
