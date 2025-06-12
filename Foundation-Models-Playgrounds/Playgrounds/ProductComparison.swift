//
//  ProductComparison.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Feature comparison row")
struct ComparisonRow {
    var feature: String
    var productA: String
    var productB: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Compare two smartphones: Phone X and Phone Y")
    let table = try await session.respond(to: prompt, generating: [ComparisonRow].self)
}
