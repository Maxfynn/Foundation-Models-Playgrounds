//
//  ConversationMemory.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = try await SystemLanguageModel.default.session()
    try await session.respond(to: Prompt("My favorite color is blue."))
    let question1 = Prompt("What is my favorite color?")
    let answer1 = try await session.respond(to: question1)
    print("Q: \(question1.content)\nA: \(answer1.content)")

    let question2 = Prompt("Could you suggest a car that matches it?")
    let answer2 = try await session.respond(to: question2)
    print("Q: \(question2.content)\nA: \(answer2.content)")
}
