//
//  FinancialStrategy.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let instructions = """
    A finance committee is planning investment strategy. The participants are:
    - Investment Banker
    - Risk Analyst
    - Portfolio Manager
    - Economist
    - CFO
    Begin each message with the speaker's role.
    """

    let session = LanguageModelSession(instructions: instructions)

    try await session.respond(to: "Investment Banker: We should diversify our holdings this quarter.")
    var transcript = session.transcript

    try await session.respond(to: "Risk Analyst: Considering previous remarks (\(transcript)), I'll assess exposure to interest rate fluctuations.")
    transcript = session.transcript

    try await session.respond(to: "Portfolio Manager: Using the information so far (\(transcript)), let's rebalance toward energy and tech sectors.")
    transcript = session.transcript

    try await session.respond(to: "Economist: In light of our discussion (\(transcript)), market indicators suggest stable growth ahead.")
    transcript = session.transcript

    try await session.respond(to: "CFO: Based on everything noted (\(transcript)), I'll prepare the budget updates for review.")
    transcript = session.transcript

    try await session.respond(to: "Investment Banker: With the current insights (\(transcript)), we'll meet again after the new forecasts.")
}
