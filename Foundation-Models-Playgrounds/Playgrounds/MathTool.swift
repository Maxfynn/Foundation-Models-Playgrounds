//
//  MathTool.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

struct MathTool: Tool {
    let name = "calculator"
    let description = "Performs basic arithmetic operations and returns the result."
    func call(_ input: MathQuery) async throws -> Double {
        switch input.operation {
        case "+":
            return input.a + input.b
        case "-":
            return input.a - input.b
        case "*":
            return input.a * input.b
        case "/":
            return input.b != 0 ? input.a / input.b : Double.nan
        default:
            throw MathError.invalidOperation
        }
    }
}

@Generable struct MathQuery {
    let a: Double
    let b: Double
    let operation: String
}

enum MathError: Error {
    case invalidOperation
}
