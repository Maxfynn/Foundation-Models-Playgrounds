//
//  UnitConverter.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let conversionTool = Tool("Converter") { params in
        if let meters = params["meters"] as? Double {
            return .string(String(meters * 3.28084))
        }
        return .string("0")
    }
    let session = LanguageModelSession(instructions: "Use the converter tool for units.", tools: [conversionTool])
    let feet = try await session.respond(to: "Convert 2 meters to feet")
}
