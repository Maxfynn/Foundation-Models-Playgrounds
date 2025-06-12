//
//  VacationPackingHelper.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Items to pack for a trip")
struct PackingListVacation {
    @Guide(description: "Recommended items", .count(1...15))
    var items: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("What should I pack for a week-long hiking trip in the Rockies?")
    let list = try await session.respond(to: prompt, generating: PackingListVacation.self)
}
