//
//  BugReportSummarizer.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Key bug report themes")
struct BugReportSummary {
    @Guide(description: "Common issues summarized from bug reports", .count(1...5))
    var themes: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Summarize recent bug reports for a mobile app")
    let summary = try await session.respond(to: prompt, generating: BugReportSummary.self)
}
