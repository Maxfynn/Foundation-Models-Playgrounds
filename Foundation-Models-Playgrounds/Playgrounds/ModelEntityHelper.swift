//
//  ModelEntityHelper.swift
//  Foundation-Models-Playgrounds
//
//  Created by Ivan Campos on 6/13/25.
//

import FoundationModels
import Playgrounds
import RealityKit
import SwiftUI

@Generable
enum EntityOptions {
    case sphere
    case cube
    case cylinder
}

@Generable
struct CustomEntity {
    @Guide(description: "ModelEntity color on the request")
    let color: String
    let type: EntityOptions
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Create a red box.")
    let modelEntityProperties = try await session.respond(to: prompt, generating: CustomEntity.self)
}
