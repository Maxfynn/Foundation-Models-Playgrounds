//
//  TravelItinerary.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Simple travel plan for a city")
struct TravelItinerary {
    var city: String
    @Guide(description: "Number of days of the trip", .range(1...14))
    var days: Int
    @Guide(description: "Highlights to visit", .count(1...10))
    var highlights: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Plan a 3 day trip to Tokyo with must-see spots")
    let itinerary = try await session.respond(to: prompt, generating: TravelItinerary.self)
}
