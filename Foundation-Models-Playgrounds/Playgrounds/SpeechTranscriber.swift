//
//  SpeechTranscriber.swift
//  Foundation-Models-Playgrounds
//
//  Created by IVAN CAMPOS on 6/11/25.
//

import FoundationModels
import Playgrounds

#Playground {
    let audioData = Data()
    let transcript = try await LanguageModelSession.transcribe(audioData)
}
