//
//  LanguageTriage.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/22/26.
//

import FoundationModels
import Playgrounds

#Playground {
    // Sessions for two users who each speak a different language.
    let spanishSession = LanguageModelSession(instructions: "You only speak Spanish.")
    let englishSession = LanguageModelSession(instructions: "You only speak English.")

    // Turn 1: Spanish user greets the English user.
    let greeting = Prompt("¡Hola! ¿Cómo estás?")
    let englishReply = try await englishSession.respond(to: greeting)

    // Turn 2: English user responds in English, Spanish user replies in Spanish.
    let spanishFollowUp = try await spanishSession.respond(to: Prompt(englishReply.content))

    // Turn 3: Continue the conversation with one more exchange.
    let finalEnglish = try await englishSession.respond(to: Prompt(spanishFollowUp.content))
    print(finalEnglish.content)
}
