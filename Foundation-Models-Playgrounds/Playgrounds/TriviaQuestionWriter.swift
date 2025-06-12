//
//  TriviaQuestionWriter.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Simple trivia question with answer")
struct TriviaQA {
    var question: String
    var answer: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Write a trivia question about world history")
    let qa = try await session.respond(to: prompt, generating: TriviaQA.self)
}
