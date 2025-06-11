//
//  CharacterChat.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(instructions: "Role-play as a medieval knight.")
    let response = try await session.respond(to: "Greet the queen")
}
