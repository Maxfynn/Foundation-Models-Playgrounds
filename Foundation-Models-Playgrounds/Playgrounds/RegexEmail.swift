//
//  RegexEmail.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

let emailPattern = #/[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}/#

@Generable(description: "Match for an email address")
struct EmailAddress {
    @Guide(description: "Value matching an email format", .matches(emailPattern))
    var value: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Give me a sample email address.")
    let address = try await session.respond(to: prompt, generating: EmailAddress.self)
}
