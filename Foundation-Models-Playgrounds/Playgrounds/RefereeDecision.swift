//
//  RefereeDecision.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/13/25.
//


import FoundationModels
import Playgrounds

/// Final arbitration result.
@Generable(description: "Consolidated answer and adjudication notes.")
struct RefereeDecision {
    @Guide(description: "The unified, best‑possible answer after reconciliation.")
    var mergedAnswer: String
    @Guide(description: "Which sub‑agent’s answer was judged most accurate (e.g. \"AgentA\" or \"AgentB\").")
    var primarySource: String
    @Guide(description: "Bullet‑point explanation of discrepancies and how they were resolved.")
    var justification: [String]
}

#Playground {
    // Pretend these came from two separate LLM agents earlier in your pipeline.
    let agentA_Response = "The capital of Australia is Sydney."
    let agentB_Response = "The capital of Australia is Canberra, established in 1913."

    // Feed both into a "referee" LLM instance.
    let instruction = """
    You are a neutral referee. Compare two answers, determine which is correct, merge if helpful,
    and explain your reasoning in bullet points. Choose one primary source.
    """
    let session = LanguageModelSession(instructions: instruction)

    let comparisonPrompt = Prompt("""
    AgentA says: "\(agentA_Response)"
    AgentB says: "\(agentB_Response)"
    Produce a RefereeDecision.
    """)

    let decision = try await session.respond(
        to: comparisonPrompt,
        generating: RefereeDecision.self
    )
}
