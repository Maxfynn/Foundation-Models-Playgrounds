//
//  TelemetrySample.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/14/25.
//


import FoundationModels
import Playgrounds

@Generable(description: "Quantified telemetry metrics for one sampling window.")
struct TelemetrySample {
    @Guide(description: "seconds since session start")
    var timestamp: Double
    @Guide(description: "average °/s")
    var gazeShiftPerSec: Float
    @Guide(description: "degrees²")
    var headPitchVariance: Float
    var speechPausesPerMin: Int
    var uiErrorCount: Int
}


@Generable(description: "Cognitive load assessment over the recent interval.")
struct LoadAssessment {
    @Guide(description: "0 (low) – 100 (critical) composite score.")
    var loadScore: Int
    @Guide(description: "One of: \"Low\", \"Moderate\", \"High\", \"Critical\".")
    var category: String
    @Guide(description: "Short bullet list (≤ 5) describing contributing factors.")
    var factors: [String]
    @Guide(description: "Action suggestions (e.g., offer break, simplify UI).")
    var recommendations: [String]
}

#Playground {
    // Simulated telemetry for the last 30 s interval.
    let telemetryJSON = """
    [
      { "timestamp": 98, "gazeShiftPerSec": 42.0, "headPitchVariance": 6.2,
        "speechPausesPerMin": 20, "uiErrorCount": 3 },
      { "timestamp": 99, "gazeShiftPerSec": 45.3, "headPitchVariance": 6.8,
        "speechPausesPerMin": 18, "uiErrorCount": 2 }
    ]
    """

    let instruction = """
    You are a Cognitive‑Load Gauge. Given an array of telemetry samples,
    compute a composite loadScore (weighted equally across metrics), assign a category,
    list main factors, and propose mitigation actions. Return `LoadAssessment`.
    """

    let session = LanguageModelSession(instructions: instruction)
    let assessment = try await session.respond(
        to: Prompt(telemetryJSON),
        generating: LoadAssessment.self
    )
}
