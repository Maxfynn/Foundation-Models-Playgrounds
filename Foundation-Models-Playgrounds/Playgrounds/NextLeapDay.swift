//
//  NextLeapDay.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Date of the next leap day")
struct SimpleDate {
    @Guide(description: "Month number", .range(1...12))
    var month: Int
    @Guide(description: "Day of the month", .range(1...31))
    var day: Int
    @Guide(description: "Four digit year", .range(1900...2100))
    var year: Int
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("When is the next leap day after 2026?")
    let date = try await session.respond(to: prompt, generating: SimpleDate.self)
}
