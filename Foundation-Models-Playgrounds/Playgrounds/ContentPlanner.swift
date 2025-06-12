//
//  ContentPlanner.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Social media content idea")
struct ContentIdea {
    var day: String
    var post: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Plan a week's worth of travel blog posts")
    let plan = try await session.respond(to: prompt, generating: [ContentIdea].self)
}
