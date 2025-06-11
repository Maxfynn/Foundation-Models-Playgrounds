//
//  LanguageTriage.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/25/26.
//

import FoundationModels
import Playgrounds
import NaturalLanguage

#Playground {
    let englishSession = LanguageModelSession(
        instructions: "You are an assistant who replies only in English."
    )
    let spanishSession = LanguageModelSession(
        instructions: "Eres un asistente que responde solo en español."
    )

    func route(_ prompt: String) async throws -> String {
        let recognizer = NLLanguageRecognizer()
        recognizer.processString(prompt)
        guard let language = recognizer.dominantLanguage else {
            return "Couldn't detect language."
        }

        let response: ModelOutput
        if language == .spanish {
            response = try await spanishSession.respond(to: Prompt(prompt))
        } else if language == .english {
            response = try await englishSession.respond(to: Prompt(prompt))
        } else {
            return "Unsupported language."
        }

        return response.content
    }

    let englishQuestion = "How are you today?"
    let englishAnswer = try await route(englishQuestion)
    print(englishAnswer)

    let spanishQuestion = "¿Cuál es la capital de España?"
    let spanishAnswer = try await route(spanishQuestion)
    print(spanishAnswer)
}
