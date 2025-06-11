//
//  AutocompleteAssistant.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(instructions: "Suggest text completions.")
    let response = try await session.respond(to: "The meaning of life is")
}
