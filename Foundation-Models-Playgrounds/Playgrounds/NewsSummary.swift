//
//  NewsSummary.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Brief news summary")
struct NewsArticle {
    var title: String
    var summary: String
    @Guide(description: "Important keywords", .count(3))
    var keywords: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Summarize today's top technology news")
    let article = try await session.respond(to: prompt, generating: NewsArticle.self)
}
