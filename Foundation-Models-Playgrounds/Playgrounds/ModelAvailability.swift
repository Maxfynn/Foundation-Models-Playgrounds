//
//  ModelAvailability.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let model = SystemLanguageModel.default
    switch model.availability {
    case .available:
        print("Foundation model is ready to use.")
    case .unavailable(.appleIntelligenceNotEnabled):
        print("The Apple Intelligence feature is not enabled on this device.")
    case .unavailable(.deviceNotEligible):
        print("The device is not eligible for this model.")
    case .unavailable(.modelNotReady):
        print("The model is not ready.")
    @unknown default:
        print("Unknown state.")
    }
}
