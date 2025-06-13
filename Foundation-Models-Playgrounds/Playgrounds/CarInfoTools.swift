//
//  CarInfoTools.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/24/26.
//

import FoundationModels
import Playgrounds

struct CarPriceTool: Tool {
    let name = "carPrice"
    let description = "Return the starting price of a car model"

    @Generable
    struct Arguments {
        @Guide(description: "Car model")
        var model: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "model": arguments.model,
            "price": "$30,000"
        ])
        return ToolOutput(info)
    }
}

struct CarFuelEconomyTool: Tool {
    let name = "carFuelEconomy"
    let description = "Show the fuel economy of a car"

    @Generable
    struct Arguments {
        @Guide(description: "Car model")
        var model: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "model": arguments.model,
            "mpg": 35
        ])
        return ToolOutput(info)
    }
}

struct CarDealerTool: Tool {
    let name = "carDealer"
    let description = "Find a nearby dealer for a car model"

    @Generable
    struct Arguments {
        @Guide(description: "Car model")
        var model: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "model": arguments.model,
            "dealer": "Local Motors"
        ])
        return ToolOutput(info)
    }
}

#Playground {
    let session = LanguageModelSession(
        tools: [CarPriceTool(), CarFuelEconomyTool(), CarDealerTool()],
        instructions: "Use car tools to answer automobile questions"
    )

    try await session.respond(to: "What is the price of the ExampleCar?")
    try await session.respond(to: "How fuel efficient is the ExampleCar?")
    try await session.respond(to: "Where can I buy the ExampleCar?")
}
