//
//  CityWeatherTool.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

struct WeatherTool: Tool {
    let name = "getWeather"
    let description = "Retrieve the latest weather information for a city"

    @Generable
    struct Arguments {
        @Guide(description: "The city to get weather information for")
        var city: String
    }

    struct Forecast: Encodable {
        var city: String
        var temperature: Int
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let forecast = GeneratedContent(properties: [
            "city": arguments.city,
            "temperature": 72,
        ])
        return ToolOutput(forecast)
    }
}

#Playground {
    let session = LanguageModelSession(
        tools: [WeatherTool()],
        instructions: "Provide temperature updates using the weather tool."
    )
    let response = try await session.respond(to: "Is it warmer in London or Paris?")
}
