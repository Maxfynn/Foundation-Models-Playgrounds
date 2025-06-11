//
//  DailyQuote.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Inspirational quote of the day")
struct Quote {
    var text: String
    var author: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Share an inspirational quote")
    let quote = try await session.respond(to: prompt, generating: Quote.self)
}
