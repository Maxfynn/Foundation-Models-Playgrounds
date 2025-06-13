//
//  WorkoutInfoTools.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/24/26.
//

import FoundationModels
import Playgrounds

struct WorkoutCalorieTool: Tool {
    let name = "workoutCalories"
    let description = "Estimate calories burned in a workout"

    @Generable
    struct Arguments {
        @Guide(description: "Type of workout")
        var workout: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "workout": arguments.workout,
            "calories": 300
        ])
        return ToolOutput(info)
    }
}

struct WorkoutDurationTool: Tool {
    let name = "workoutDuration"
    let description = "Typical duration for a workout"

    @Generable
    struct Arguments {
        @Guide(description: "Type of workout")
        var workout: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "workout": arguments.workout,
            "duration": "45 minutes"
        ])
        return ToolOutput(info)
    }
}

struct WorkoutEquipmentTool: Tool {
    let name = "workoutEquipment"
    let description = "Suggested equipment for a workout"

    @Generable
    struct Arguments {
        @Guide(description: "Type of workout")
        var workout: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        let info = GeneratedContent(properties: [
            "workout": arguments.workout,
            "equipment": "Dumbbells"
        ])
        return ToolOutput(info)
    }
}

#Playground {
    let session = LanguageModelSession(
        tools: [WorkoutCalorieTool(), WorkoutDurationTool(), WorkoutEquipmentTool()],
        instructions: "Use workout tools for exercise questions"
    )

    try await session.respond(to: "How many calories does a run burn?")
    try await session.respond(to: "How long should a run last?")
    try await session.respond(to: "What equipment is good for running?")
}
