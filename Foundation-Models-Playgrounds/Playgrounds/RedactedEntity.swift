//
//  RedactedEntity.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/13/25.
//


import FoundationModels
import Playgrounds

@Generable(description: "entity with its location and a standard category tag.")
struct RedactedEntity: Codable {
    @Guide(description: "\"EMAIL\", \"PHONE\", \"SSN\"")
    var type: String
    @Guide(description: "the sensitive text that was removed")
    var original: String
}

/// Top‑level generable result.
@Generable(description: "A version of the text with all PII masked plus a report of what was removed.")
struct RedactionResult {
    @Guide(description: "original unmodified input text.")
    var originalText: String
    @Guide(description: "text with PII replaced by category tokens, e.g. \"[EMAIL]\".")
    var redactedText: String
    @Guide(description: "List of entities that were removed/masked.")
    var redactedEntities: [RedactedEntity]
    @Guide(description: "True if *no* PII was found; false otherwise.")
    var isClean: Bool
}

#Playground {
    let instruction = """
    You are a privacy redactor. Identify emails, phone numbers, SSNs, credit‑card numbers, addresses, and personal names.
    Replace them with bracketed ALL‑CAPS tokens (e.g. [EMAIL]) in the redactedText.
    Also output a RedactedEntity list detailing the removals.
    """
    let session = LanguageModelSession(instructions: instruction)

    let sensitive = """
    Hi Dr. Smith,

    Please ship the samples to 123 Maple Street, Palo Alto, CA 94301.
    You can bill the purchase order to jane.doe@example.com or call me at (555)‑123‑4567.

    Regards, Jane
    """
    let result = try await session.respond(
        to: Prompt(sensitive),
        generating: RedactionResult.self
    )
}
