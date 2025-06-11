//
//  CatProfileGenerator.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Basic profile information about a cat")
struct CatProfile {
    var name: String

    @Guide(description: "The age of the cat", .range(0...20))
    var age: Int

    @Guide(description: "A one sentence profile about the cat's personality")
    var profile: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Generate a cute rescue cat")
    let cat = try await session.respond(to: prompt, generating: CatProfile.self)
}
