//
//  KnowledgeBaseLookup.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(instructions: "Search a knowledge base for answers.")
    let answer = try await session.respond(to: "Who developed Swift?", knowledgeBase: "AppleHistory")
}
