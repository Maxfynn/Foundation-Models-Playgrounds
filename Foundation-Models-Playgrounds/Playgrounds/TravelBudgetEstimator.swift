//
//  TravelBudgetEstimator.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Estimated travel budget in USD")
struct TravelBudget {
    @Guide(description: "Approximate total cost in US dollars")
    var totalCost: Int
    @Guide(description: "Estimated cost per day in US dollars")
    var dailyCost: Int
    @Guide(description: "Main expense categories", .count(1...5))
    var categories: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Estimate the budget for a 5-day trip to Paris")
    let budget = try await session.respond(to: prompt, generating: TravelBudget.self)
}
