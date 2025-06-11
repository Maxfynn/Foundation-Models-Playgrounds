//
//  SentimentAnalyzer.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(instructions: "Analyze sentiment as positive or negative.")
    let text = "I absolutely love the new product!"
    let sentiment = try await session.respond(to: text)
}
