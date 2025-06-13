//
//  AnimalInfoTools.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/24/26.
//

import FoundationModels
import Playgrounds

struct AnimalFactTool: Tool {
    let name = "animalFact"
    let description = "Provide a quick fact about an animal"

    @Generable
    struct Arguments {
        @Guide(description: "Animal name")
        var animal: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "animal": arguments.animal,
            "fact": "This animal is fascinating"
        ])
        return ToolOutput(info)
    }
}

struct AnimalHabitatTool: Tool {
    let name = "animalHabitat"
    let description = "Describe the habitat of an animal"

    @Generable
    struct Arguments {
        @Guide(description: "Animal name")
        var animal: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "animal": arguments.animal,
            "habitat": "Typically found in forests"
        ])
        return ToolOutput(info)
    }
}

struct AnimalDietTool: Tool {
    let name = "animalDiet"
    let description = "Explain what an animal eats"

    @Generable
    struct Arguments {
        @Guide(description: "Animal name")
        var animal: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "animal": arguments.animal,
            "diet": "Mostly plants"
        ])
        return ToolOutput(info)
    }
}

#Playground {
    let session = LanguageModelSession(
        tools: [AnimalFactTool(), AnimalHabitatTool(), AnimalDietTool()],
        instructions: "Use animal tools to answer wildlife questions"
    )

    try await session.respond(to: "Give me a fact about pandas")
    try await session.respond(to: "Where do pandas live?")
    try await session.respond(to: "What do pandas eat?")
}
