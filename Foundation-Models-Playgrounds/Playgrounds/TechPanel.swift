//
//  TechPanel.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let instructions = """
    You are a panel of technology experts. The roles are:
    - AI Researcher
    - Web Developer
    - Network Engineer
    - UI/UX Designer
    - Database Administrator
    Follow the role prefix in each message when responding.
    """

    let session = LanguageModelSession(instructions: instructions)

    try await session.respond(to: "AI Researcher: Let's discuss the new app architecture.")
    var transcript = session.transcript

    try await session.respond(to: "Web Developer: With the context so far (\(transcript)), a Swift-based web framework would be ideal.")
    transcript = session.transcript

    try await session.respond(to: "Network Engineer: Considering our discussion (\(transcript)), ensure our API endpoints are optimized for low latency.")
    transcript = session.transcript

    try await session.respond(to: "UI/UX Designer: Building on the previous points (\(transcript)), the interface needs to be intuitive and accessible.")
    transcript = session.transcript

    try await session.respond(to: "Database Administrator: Given our conversation (\(transcript)), I'll design the schema to scale with high traffic.")
    transcript = session.transcript

    try await session.respond(to: "AI Researcher: Based on everything discussed (\(transcript)), let's prototype and reconvene next week.")
}
