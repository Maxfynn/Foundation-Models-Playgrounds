//
//  GardenPlanner.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Information about a garden plant")
struct Plant {
    var name: String
    @Guide(description: "Flower color options", .values(["red", "yellow", "blue", "white"]))
    var color: String
    @Guide(description: "Watering frequency in days", .range(1...14))
    var wateringInterval: Int
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Suggest a flowering plant for a sunny balcony")
    let plant = try await session.respond(to: prompt, generating: Plant.self)
}
