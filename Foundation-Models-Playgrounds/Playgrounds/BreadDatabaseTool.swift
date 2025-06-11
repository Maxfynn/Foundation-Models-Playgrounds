//
//  BreadDatabaseTool.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

struct BreadDatabaseTool: Tool {
    let name = "searchBreadDatabase"
    let description = "Searches a local database for bread recipes."

    @Generable
    struct Arguments {
        @Guide(description: "The type of bread to search for")
        var searchTerm: String
        @Guide(description: "The number of recipes to get", .range(1...6))
        var limit: Int
    }

    struct Recipe {
        var name: String
        var description: String
        var link: URL
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        var recipes: [Recipe] = []
        let formatted = recipes.map { "Recipe for '\($0.name)': \($0.description) Link: \($0.link)" }
        return ToolOutput(GeneratedContent(properties: ["recipes": formatted]))
    }
}

#Playground {
    let session = LanguageModelSession(tools: [BreadDatabaseTool()])
    let response = try await session.respond(to: "Find two rye bread recipes")
}
