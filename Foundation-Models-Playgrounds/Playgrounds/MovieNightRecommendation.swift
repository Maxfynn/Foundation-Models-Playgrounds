//
//  MovieNightRecommendation.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Recommendation for a movie night")
struct MovieNight {
    var movieTitle: String
    var reason: String
    @Guide(description: "Suggested rating out of 10", .range(1...10))
    var rating: Int
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Recommend a comedy for movie night")
    let recommendation = try await session.respond(to: prompt, generating: MovieNight.self)
}
