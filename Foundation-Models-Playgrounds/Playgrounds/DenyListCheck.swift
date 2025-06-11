//
//  DenyListCheck.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/13/25.
//

import FoundationModels
import Playgrounds
import Foundation

func verifyText(_ text: String) -> Bool {
    let denyList = ["unsafeTerm1", "unsafeTerm2"]
    return !denyList.contains { text.localizedCaseInsensitiveContains($0) }
}

#Playground {
    let session = LanguageModelSession()
    let userInput = "This might mention unsafeTerm1."
    let prompt = "Generate a wholesome story about: \(userInput)"
    if verifyText(prompt) {
        let response = try await session.respond(to: prompt)
        if verifyText(response.content) {
            print(response.content)
        } else {
            print("Generated output was blocked by the deny list.")
        }
    } else {
        print("Input was blocked by the deny list.")
    }
}

