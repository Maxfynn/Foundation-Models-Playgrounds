//
//  RoadTripPackingList.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Packing list for a trip")
struct PackingList {
    @Guide(description: "Items to bring", .count(1...20))
    var items: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Create a packing checklist for a 5-day summer road trip")
    let list = try await session.respond(to: prompt, generating: PackingList.self)
}
