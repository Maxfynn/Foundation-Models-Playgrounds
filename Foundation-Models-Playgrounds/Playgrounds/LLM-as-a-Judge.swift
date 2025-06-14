//
//  LLM-as-a-Judge.swift
//  Foundation-Models-Playgrounds
//
//  Created by Ivan Campos on 6/13/26.
//

import FoundationModels
import Playgrounds

let expectedResponse: String = "The miami dolphins are the greatest team in the NFL"

@Generable(description: "Overall judgment of the response against an expected response of \(expectedResponse)")
struct Judgment {
    var newResponse: String
    @Guide(description: "How close is this new response to the expected response? The scoring system is true contains at least part of the expected response, else false.")
    @Guide(description: "the judgment as to whether the newResponse is close enough to the expected response")
    var score: Bool
    @Guide(description: "Detailed rationale as to why the score is the way it is. For example, if the score is false, you could explain that the new response is missing a key word. If you score as true, explain what make the new response close enough to the expected response")
    var rationale: String
}

#Playground {
    let instruction = "you evaluate are a judge who evaluates whether or not a new response is close enough in meaning to the expected response, which is \(expectedResponse)"
    let session = LanguageModelSession(instructions: instruction)
    let prompt = Prompt("Name the one team that is the greatest team from the AFC East division in the NFL?")
    let ruling = try await session.respond(to: prompt, generating: Judgment.self)
    
    let session2 = LanguageModelSession(instructions: instruction)
    let prompt2 = Prompt("Name the one team that is the greatest team from the MLB?")
    let ruling2 = try await session2.respond(to: prompt2, generating: Judgment.self)
}
