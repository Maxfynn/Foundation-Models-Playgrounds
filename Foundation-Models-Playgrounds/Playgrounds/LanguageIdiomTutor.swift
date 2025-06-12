//
//  LanguageIdiomTutor.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Meaning and example sentence for an idiom")
struct IdiomExplanation {
    var meaning: String
    @Guide(description: "Example sentence")
    var example: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Explain the English idiom 'break the ice' and provide an example sentence")
    let idiom = try await session.respond(to: prompt, generating: IdiomExplanation.self)
}
