//
//  MusicAlbum.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 7/20/26.
//

import FoundationModels
import Playgrounds

@Generable(description: "Information about a music album")
struct MusicAlbum {
    var title: String
    var artist: String
    @Guide(description: "Number of tracks on the album", .range(1...20))
    var trackCount: Int
    @Guide(description: "List of track titles", .count(1...20))
    var tracks: [String]
}

#Playground {
    let session = LanguageModelSession()
    let prompt = Prompt("Describe a popular rock album with at least 5 tracks")
    let album = try await session.respond(to: prompt, generating: MusicAlbum.self)
}
