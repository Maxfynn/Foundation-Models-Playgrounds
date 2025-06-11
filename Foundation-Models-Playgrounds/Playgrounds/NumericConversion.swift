//
//  NumericConversion.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("How many tablespoons are in a cup?")
    let tablespoons = try await session.respond(to: prompt, generating: Float.self)
}
