//
//  StructuredBookRecommendation.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

@Generable
struct BookRecommendation {
    @Guide(description: "The title of the book")
    let title: String
    @Guide(description: "The author's name")
    let author: String
    @Guide(description: "Genre of the book")
    let genre: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Suggest a science fiction book for someone who liked Dune.")
    let book = try await session.respond(to: prompt, generating: BookRecommendation.self)
}
