//
//  MathSolver.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let calculator = Tool("Calculator") { parameters in
        if let nums = parameters["numbers"] as? [Double] {
            return .string(String(nums.reduce(0, +)))
        }
        return .string("0")
    }
    let session = LanguageModelSession(instructions: "Solve math problems using the calculator.", tools: [calculator])
    let answer = try await session.respond(to: "What is 40 + 2?")
}
