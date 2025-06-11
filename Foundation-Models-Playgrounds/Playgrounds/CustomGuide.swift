//
//  CustomGuide.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let guide = Guide("Respond in pirate style")
    let session = LanguageModelSession(instructions: "Use the guide for style.")
    let response = try await session.respond(to: "Where is the treasure?", guide: guide)
}
