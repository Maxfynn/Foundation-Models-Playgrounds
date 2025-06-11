//
//  SafetyInputBoundaries.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/13/25.
//

import FoundationModels
import Playgrounds

enum TopicOptions {
    case family
    case nature
    case work
}

#Playground {
    let topicChoice = TopicOptions.nature
    let prompt = """
        Generate a wholesome and empathetic journal prompt that helps \
        this person reflect on \(topicChoice)
        """
    let session = LanguageModelSession()
    let response = try await session.respond(to: prompt)
    print(response.content)
}

