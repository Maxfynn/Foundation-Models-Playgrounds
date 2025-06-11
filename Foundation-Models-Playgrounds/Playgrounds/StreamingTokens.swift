//
//  StreamingTokens.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(instructions: "Stream your answer.")
    let responseStream = try await session.streamResponse(to: "Give me a poem")
    for try await token in responseStream {
        print(token)
    }
}
