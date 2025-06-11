//
//  SpaceMission.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let instructions = """
    A space mission team is collaborating on an upcoming launch. The roles include:
    - Astronaut
    - Mission Planner
    - Spacecraft Engineer
    - Astrophysicist
    - Flight Surgeon
    Address each message with the role name first.
    """

    let session = LanguageModelSession(instructions: instructions)

    try await session.respond(to: "Astronaut: The launch window opens in six months.")
    var transcript = session.transcript

    try await session.respond(to: "Mission Planner: Considering our discussion (\(transcript)), we'll finalize objectives and timelines.")
    transcript = session.transcript

    try await session.respond(to: "Spacecraft Engineer: Using the latest updates (\(transcript)), I'll verify the propulsion system readiness.")
    transcript = session.transcript

    try await session.respond(to: "Astrophysicist: Based on the mission details (\(transcript)), we must analyze solar activity for safety.")
    transcript = session.transcript

    try await session.respond(to: "Flight Surgeon: Taking all information into account (\(transcript)), crew health screenings begin next week.")
    transcript = session.transcript

    try await session.respond(to: "Astronaut: With these updates (\(transcript)), everyone prepare your reports for the review meeting.")
}
