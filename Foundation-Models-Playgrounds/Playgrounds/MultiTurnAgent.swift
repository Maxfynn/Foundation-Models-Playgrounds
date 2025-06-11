//
//  MultiTurnAgent.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let agent = Agent(role: "planner")
    let session = LanguageModelSession(instructions: "Plan tasks over multiple turns.", agent: agent)
    _ = try await session.respond(to: "Plan a trip to Rome")
    let details = try await session.respond(to: "Add museum visits")
}
