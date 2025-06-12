//
//  EmojiTranslator.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Translate 'have a great day' into emojis")
    let emojis = try await session.respond(to: prompt, generating: String.self)
}
