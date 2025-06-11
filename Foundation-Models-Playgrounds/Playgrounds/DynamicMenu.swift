//
//  DynamicMenu.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let menuSchema = DynamicGenerationSchema(
        name: "Menu",
        properties: [
            DynamicGenerationSchema.Property(
                name: "dailySoup",
                schema: DynamicGenerationSchema(
                    name: "dailySoup",
                    anyOf: ["Tomato", "Chicken Noodle", "Clam Chowder"]
                )
            ),
            DynamicGenerationSchema.Property(
                name: "special",
                schema: DynamicGenerationSchema(
                    name: "special",
                    anyOf: ["Burger", "Pasta", "Salad"]
                )
            )
        ]
    )

    let schema = try GenerationSchema(root: menuSchema, dependencies: [])

    let session = LanguageModelSession()
    let response = try await session.respond(
        to: "What are today's specials?",
        schema: schema
    )

    let soup: String = try response.value(String.self, forProperty: "dailySoup")
}
