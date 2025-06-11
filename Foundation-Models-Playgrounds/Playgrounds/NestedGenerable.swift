//
//  NestedGenerable.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Basic profile about a pet")
struct Pet {
    var name: String
    var kind: String
}

@Generable(description: "Information about a pet owner")
struct PetOwner {
    var ownerName: String
    var pet: Pet
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Describe a pet owner and their cat")
    let owner = try await session.respond(to: prompt, generating: PetOwner.self)
}
