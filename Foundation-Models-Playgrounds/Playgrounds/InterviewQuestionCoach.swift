//
//  InterviewQuestionCoach.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Sample interview question with a short model answer")
struct InterviewQA {
    var question: String
    var answer: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Provide an iOS developer interview question with a short answer")
    let qa = try await session.respond(to: prompt, generating: InterviewQA.self)
}
