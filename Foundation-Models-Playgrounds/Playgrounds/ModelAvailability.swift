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
    switch model.state {
    case .available:
        print("Foundation model is ready to use.")
    case .downloading:
        print("\u231B The model is downloading... please wait.")
    case .notSupported:
        print("Foundation model not supported on this device.")
    @unknown default:
        print("\u2642 Unknown state.")
    }
}
