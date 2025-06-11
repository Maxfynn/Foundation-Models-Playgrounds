//
//  ToolWithParams.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let weatherTool = Tool("Weather") { params in
        if let city = params["city"] as? String {
            return .string("It is sunny in \(city)")
        }
        return .string("Unknown")
    }
    let session = LanguageModelSession(instructions: "Use tools to provide weather.", tools: [weatherTool])
    let forecast = try await session.respond(to: "What's the weather in Paris?")
}
