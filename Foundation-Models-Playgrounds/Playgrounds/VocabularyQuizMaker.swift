//
//  VocabularyQuizMaker.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Multiple-choice vocabulary question")
struct QuizQuestion {
    var question: String
    @Guide(description: "Answer options", .count(4))
    var choices: [String]
    var answer: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Create a vocabulary quiz question using the word 'ephemeral'")
    let quiz = try await session.respond(to: prompt, generating: QuizQuestion.self)
}
