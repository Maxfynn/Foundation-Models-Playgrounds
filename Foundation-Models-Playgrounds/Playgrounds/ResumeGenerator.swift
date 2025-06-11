//
//  ResumeGenerator.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Basic resume layout")
struct Resume {
    var name: String
    var role: String
    @Guide(description: "List of 3 accomplishments", .count(3))
    var highlights: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Generate a resume for a senior iOS developer")
    let resume = try await session.respond(to: prompt, generating: Resume.self)
}
