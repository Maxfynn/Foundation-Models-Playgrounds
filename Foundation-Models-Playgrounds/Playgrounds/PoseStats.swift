//
//  PoseStats.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/14/25.
//

import FoundationModels
import Playgrounds

@Generable(description: "Aggregated metrics derived from a session’s head‑pose samples.")
struct PoseStats: Codable {
    var averageYaw: Float
    var averagePitch: Float
    var averageRoll: Float
    var peakYaw: Float
    var peakPitch: Float
    var peakRoll: Float
}

@Generable(description: "Natural‑language insight paragraphs keyed to usability themes.")
struct Insight: Codable {
    @Guide(description: "e.g. \"Ergonomics\", \"UI Reachability\"")
    var theme: String
    var narrative: String
}

/// LLM output model.
@Generable(description: "Narrative analysis of head‑pose patterns during a visionOS session.")
struct HeadPoseReport {
    var poseStatistics: PoseStats
    var insights: [Insight]
    @Guide(description: "Action items (≤ 5) ranked by impact.")
    var recommendations: [String]
}

#Playground {
    // Synthetic 3‑sample telemetry just for illustration.
    let poseCSV = """
    timestamp,yaw,pitch,roll
    0,   2.3,  -1.1, 0.6
    1,  15.0,  -3.4, 1.0
    2,   3.1,  -0.9, 0.2
    """

    let instruction = """
    You are a UX analytics narrator. Convert head‑pose samples (CSV, degrees) into:
    • aggregated statistics,
    • insight narratives (ergonomics, attention focus, layout suitability),
    • actionable recommendations capped at 5.
    Output a `HeadPoseReport`.
    """

    let session = LanguageModelSession(instructions: instruction)
    let report = try await session.respond(
        to: Prompt(poseCSV),
        generating: HeadPoseReport.self
    )
}
