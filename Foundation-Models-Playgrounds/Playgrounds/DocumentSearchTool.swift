//
//  DocumentSearchTool.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

struct DocumentSearchTool: Tool {
    let name = "searchDocuments"
    let description = "Find documents matching a query"

    @Generable
    struct Arguments {
        @Guide(description: "Search term to look for")
        var query: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let results = ["Document related to \(arguments.query)"]
        return ToolOutput(GeneratedContent(properties: ["results": results]))
    }
}

#Playground {
    let session = LanguageModelSession(
        tools: [DocumentSearchTool()],
        instructions: "Search the documents tool for references"
    )
    let response = try await session.respond(to: "Find documentation on matrix multiplication")
}
