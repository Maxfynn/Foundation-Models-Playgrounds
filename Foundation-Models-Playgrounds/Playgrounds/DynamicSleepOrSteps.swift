//
//  DynamicSleepOrSteps.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/21/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(
        tools: [SleepDataTool(), StepCountTool()],
        instructions: "Answer health questions using the sleep or steps tool as needed."
    )

    try await session.respond(to: "Emma: How many hours did I sleep last night?")
    try await session.respond(to: "Olivia: What's my current step count?")
}
