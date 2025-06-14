//
//  DebateRuling.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/13/25.
//

import FoundationModels
import Playgrounds

@Generable(description: "Moderates a debate and selects the stronger argument.")
struct DebateRuling {
    @Guide(description: "winning side: either \"Pro\" or \"Con\".")
    var winner: String
    @Guide(description: "Key points supporting the winning side.")
    var winningPoints: [String]
    @Guide(description: "Summary of why the losing side fell short.")
    var critiqueOfLoser: String
}

#Playground {
    let topic = "Should homework be abolished in primary schools?"
    let pro = "Homework reinforces classroom learning and teaches responsibility."
    let con = "It increases stress and reduces family/play time without proven benefit."

    let instruction = "Act as an impartial debate moderator on the topic: \(topic)"
    let session = LanguageModelSession(instructions: instruction)

    let debatePrompt = Prompt("""
    Pro side says: "\(pro)"
    Con side says: "\(con)"
    Evaluate both arguments and return a DebateRuling.
    """)

    let ruling = try await session.respond(to: debatePrompt, generating: DebateRuling.self)
}
