//
//  CodeReviewAssistant.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let instruction = "You are a helpful code reviewer. Provide suggestions to improve readability."
    let session = LanguageModelSession(instructions: instruction)
    let code = """
    func greet(name: String){print("Hello World")}
    """
    let prompt = Prompt("Review the following Swift code:\n\n\(code)")
    let options = GenerationOptions(temperature: 0.2, maximumResponseTokens: 1000)
    let response = try await session.respond(to: prompt, options: options)
}
