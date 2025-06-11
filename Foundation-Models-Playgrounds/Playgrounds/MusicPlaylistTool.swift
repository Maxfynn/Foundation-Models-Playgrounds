//
//  MusicPlaylistTool.swift
//  Foundation-Models-Playgrounds
//
//  Created by OpenAI Assistant on 6/12/25.
//

import FoundationModels
import Playgrounds

struct MusicPlaylistTool: Tool {
    let name = "addSongToPlaylist"
    let description = "Adds a song to a playlist"

    @Generable
    struct Arguments {
        @Guide(description: "The song title")
        var title: String
        @Guide(description: "The playlist name")
        var playlist: String
    }

    func call(arguments: Arguments) async throws -> ToolOutput {
        return ToolOutput("Added \(arguments.title) to \(arguments.playlist)")
    }
}

#Playground {
    let session = LanguageModelSession(
        tools: [MusicPlaylistTool()],
        instructions: "Manage songs when asked"
    )
    let response = try await session.respond(
        to: "Add 'Imagine' to my favorites playlist"
    )
}
