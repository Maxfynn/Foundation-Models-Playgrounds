//
//  SQLQueryAssistant.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let session = LanguageModelSession(instructions: "Generate SQL queries from natural language.")
    let query = try await session.respond(to: "Show me all rows from users table")
}
