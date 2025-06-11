//
//  DynamicTriviaOrDarkMode.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/21/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(
        tools: [TriviaScoreTool(), DarkModeTool()],
        instructions: "Use the trivia or dark mode tool depending on each speaker's intent."
    )

    try await session.respond(to: "Ava: Set my trivia score to 10.")
    try await session.respond(to: "Mia: Please enable dark mode.")
}
