//
//  WorkoutSchedule.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Weekly workout plan")
struct WorkoutSchedule {
    @Guide(description: "Day of the week", .values(["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]))
    var day: String
    var exercises: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Create a weekend workout schedule with two exercises each day")
    let schedule = try await session.respond(to: prompt, generating: [WorkoutSchedule].self)
}
