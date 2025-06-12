//
//  BookSeriesSummary.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Short summary for a book in a series")
struct BookSummary {
    var title: String
    var summary: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Summarize the first three books in the Dune series")
    let summaries = try await session.respond(to: prompt, generating: [BookSummary].self)
}
