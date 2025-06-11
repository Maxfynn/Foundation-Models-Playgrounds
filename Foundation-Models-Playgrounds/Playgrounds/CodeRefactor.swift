//
//  CodeRefactor.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(instructions: "Refactor code for clarity.")
    let code = "for i in 0..<10{print(i)}"
    let refactored = try await session.respond(to: code)
}
