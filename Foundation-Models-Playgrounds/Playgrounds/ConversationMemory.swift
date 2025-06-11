//
//  ConversationMemory.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession()
    try await session.respond(to: Prompt("My favorite color is blue."))
    let question1 = Prompt("What is my favorite color?")
    let answer1 = try await session.respond(to: question1)

    let question2 = Prompt("Could you suggest a car that matches it?")
    let answer2 = try await session.respond(to: question2)
}
