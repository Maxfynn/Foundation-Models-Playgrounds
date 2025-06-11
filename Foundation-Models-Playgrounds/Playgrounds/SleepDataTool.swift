//
//  SleepDataTool.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

struct SleepDataTool: Tool {
    let name = "getSleepData"
    let description = "Retrieve last night's sleep duration"

    @Generable
    struct Arguments {}

    func call(arguments: Arguments) async throws -> ToolOutput {
        let hours = 7
        let output = GeneratedContent(properties: ["hours": hours])
        return ToolOutput(output)
    }
}

#Playground {
    let session = LanguageModelSession(
        tools: [SleepDataTool()],
        instructions: "Report sleep data when asked"
    )
    let response = try await session.respond(to: "How long did I sleep last night?")
}
