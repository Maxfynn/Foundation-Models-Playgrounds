//
//  MedicalCase.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

#Playground {
    let instructions = """
    You are a medical team discussing a complex patient case. The experts are:
    - Cardiologist
    - Neurologist
    - Oncologist
    - Radiologist
    - Pharmacist
    Use the role name before each message.
    """

    let session = LanguageModelSession(instructions: instructions)

    try await session.respond(to: "Cardiologist: The patient has irregular heart rhythms.")
    var transcript = session.transcript

    try await session.respond(to: "Neurologist: Reviewing the conversation (\(transcript)), I've noticed mild cognitive impairment.")
    transcript = session.transcript

    try await session.respond(to: "Oncologist: Taking into account our notes (\(transcript)), there are no signs of malignancy in the scans.")
    transcript = session.transcript

    try await session.respond(to: "Radiologist: With the information so far (\(transcript)), imaging confirms mild inflammation in the lungs.")
    transcript = session.transcript

    try await session.respond(to: "Pharmacist: In light of the ongoing discussion (\(transcript)), current medication should be adjusted to avoid interaction.")
    transcript = session.transcript

    try await session.respond(to: "Cardiologist: Based on the discussion so far (\(transcript)), I'll update the treatment plan and monitor progress.")
}
