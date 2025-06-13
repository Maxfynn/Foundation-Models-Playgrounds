//
//  ProgrammingLanguageTools.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/24/26.
//

import FoundationModels
import Playgrounds

struct ProgrammingLanguageYearTool: Tool {
    let name = "languageYear"
    let description = "Report the year a language was created"

    @Generable
    struct Arguments {
        @Guide(description: "Programming language")
        var language: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "language": arguments.language,
            "year": 1995
        ])
        return ToolOutput(info)
    }
}

struct ProgrammingLanguageCreatorTool: Tool {
    let name = "languageCreator"
    let description = "Report who created a programming language"

    @Generable
    struct Arguments {
        @Guide(description: "Programming language")
        var language: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "language": arguments.language,
            "creator": "Famous Developer"
        ])
        return ToolOutput(info)
    }
}

struct ProgrammingLanguageParadigmTool: Tool {
    let name = "languageParadigm"
    let description = "State the primary paradigm of a language"

    @Generable
    struct Arguments {
        @Guide(description: "Programming language")
        var language: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "language": arguments.language,
            "paradigm": "Object-Oriented"
        ])
        return ToolOutput(info)
    }
}

#Playground {
    let session = LanguageModelSession(
        tools: [ProgrammingLanguageYearTool(), ProgrammingLanguageCreatorTool(), ProgrammingLanguageParadigmTool()],
        instructions: "Use language tools for programming trivia"
    )

    try await session.respond(to: "When was Swift created?")
    try await session.respond(to: "Who created Swift?")
    try await session.respond(to: "What paradigm is Swift primarily?")
}
