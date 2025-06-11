//
//  ToolUsage.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let calculator = Tool("Calculator") { parameters in
        if let nums = parameters["numbers"] as? [Double] {
            return .string(String(nums.reduce(0, +)))
        }
        return .string("0")
    }

    let session = LanguageModelSession(instructions: "You can add numbers using the calculator tool.", tools: [calculator])
    let options = GenerationOptions(temperature: 0.0, maximumResponseTokens: 1000)
    let response = try await session.respond(to: "Add 2 and 3", options: options)
}
