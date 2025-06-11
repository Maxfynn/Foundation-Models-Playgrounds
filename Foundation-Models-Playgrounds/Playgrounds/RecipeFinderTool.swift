//
//  RecipeFinderTool.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

struct RecipeTool: Tool {
    let name = "searchRecipes"
    let description = "Searches a local database for bread recipes"

    @Generable
    struct Arguments {
        @Guide(description: "The type of bread to search for")
        var searchTerm: String
        @Guide(description: "The number of recipes to get", .range(1...3))
        var limit: Int
    }

    struct Recipe {
        var name: String
        var description: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let recipes: [Recipe] = []
        let formatted = recipes.map { "Recipe for '\($0.name)': \($0.description)" }
        return ToolOutput(GeneratedContent(properties: ["recipes": formatted]))
    }
}

#Playground {
    let session = LanguageModelSession(tools: [RecipeTool()])
    let response = try await session.respond(to: "Find two sourdough recipes")
}
