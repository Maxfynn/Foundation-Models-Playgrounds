//
//  ToolCalling.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let tools: [Tool] = [MathTool()]
    let config = LanguageModel.Configuration(tools: tools)
    let session = try await SystemLanguageModel.default.session(configuration: config)
    let prompt = Prompt("What is 12 * 9 - 5?")
    let answer = try await session.respond(to: prompt)
    print("The answer: \(answer.content)")
}
