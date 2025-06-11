//
//  ErrorHandling.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

#Playground {
    do {
        let session = try await SystemLanguageModel.default.session()
        let prompt = Prompt("Tell me the population of Mars.")
        let answer = try await session.respond(to: prompt)
        print("Answer: \(answer.content)")
    } catch FoundationModelsError.modelUnavailable {
        print("The AI model is not available on this device or is not enabled.")
    } catch FoundationModelsError.contentDisallowed {
        print("The query or response was flagged as disallowed content.")
    } catch {
        print("An unexpected error occurred: \(error.localizedDescription)")
    }
}
