//
//  RegexPhoneNumber.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

let phonePattern = #/\d{3}-\d{3}-\d{4}/#

@Generable(description: "Phone number in 123-456-7890 format")
struct PhoneNumber {
    @Guide(description: "String that matches a U.S. phone number", .matches(phonePattern))
    var value: String
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Provide a contact phone number in 123-456-7890 format.")
    let phone = try await session.respond(to: prompt, generating: PhoneNumber.self)
}
