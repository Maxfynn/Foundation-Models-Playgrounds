//
//  StreamingPoem.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Write a short poem about technology and nature.")
    let stream = session.streamResponse(to: prompt)
    for try await partial in stream {
        print(partial, terminator: "")
    }
}
