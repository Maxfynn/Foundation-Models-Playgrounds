//  RegexCharacterName.swift
//  Foundation-Models-Playgrounds
//
//  Created by Ivan Campos on 6/12/25.
//

import FoundationModels
import Playgrounds

@Generable
struct NamePattern {
    @Guide(/(Mr|Mrs|Ms|Dr)\. \w+/)
    var name: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Give me the name of an animated character")
    let name = try await session.respond(
        to: prompt,
        generating: NamePattern.self
    )
}
