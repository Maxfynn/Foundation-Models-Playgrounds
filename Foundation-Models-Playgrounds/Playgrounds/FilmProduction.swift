//
//  FilmProduction.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let instructions = """
    A film crew is preparing for production. The team includes:
    - Director
    - Producer
    - Cinematographer
    - Scriptwriter
    - Sound Engineer
    Use the role prefix when speaking.
    """

    let session = LanguageModelSession(instructions: instructions)

    try await session.respond(to: "Director: Our shooting schedule starts next month.")
    var transcript = session.transcript

    try await session.respond(to: "Producer: Based on the plan so far (\(transcript)), I'll coordinate the logistics and budget allocations.")
    transcript = session.transcript

    try await session.respond(to: "Cinematographer: Considering previous notes (\(transcript)), I'm planning the lighting setups for key scenes.")
    transcript = session.transcript

    try await session.respond(to: "Scriptwriter: With our ongoing discussion (\(transcript)), the final draft should be delivered tomorrow.")
    transcript = session.transcript

    try await session.respond(to: "Sound Engineer: After reviewing the transcript (\(transcript)), I'll organize location audio tests next week.")
    transcript = session.transcript

    try await session.respond(to: "Director: Great work so far (\(transcript)). Let's keep communication open throughout production.")
}
