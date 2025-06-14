//
//  ColorFix.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/14/25.
//


import FoundationModels
import Playgrounds

@Generable(description: "Original shade plus its CVD‑safe replacement.")
struct ColorFix {
    @Guide(description: "e.g. \"#007AFF\"")
    var originalHex: String
    @Guide(description: "CVD‑adjusted value")
    var fixedHex: String
    @Guide(description: "Approximated delta‑E or qualitative similarity note.")
    var similarityNote: String
}

/// Structured LLM output.
@Generable(description: "Revised palette that remains distinguishable for Protanopia, Deuteranopia, and Tritanopia.")
struct PaletteFixResult {
    @Guide(description: "Semantic name → adjusted color info.")
    var revisedPalette: [ColorFix]
    @Guide(description: "Problems found with original colors (contrast issues, indistinguishable pairs, etc.).")
    var detectedIssues: [String]
    @Guide(description: "Tips for designers (≤ 3) on maintaining brand identity while inclusive.")
    var guidance: [String]
}

#Playground {
    let originalPalette = """
    {
      "Primary":   "#007AFF",
      "Secondary": "#34C759",
      "Accent":    "#FF375F",
      "Background":"#F2F2F7",
      "Text":      "#1C1C1E"
    }
    """

    let instruction = """
    You are a Color‑Blind Palette Fixer. Evaluate the JSON palette for Protanopia, Deuteranopia,
    and Tritanopia via standard simulation matrices. Supply CVD‑safe replacements only when needed,
    preserving perceptual similarity. Return a `PaletteFixResult`.
    """

    let session = LanguageModelSession(instructions: instruction)
    let fixed = try await session.respond(
        to: Prompt(originalPalette),
        generating: PaletteFixResult.self
    )
}
