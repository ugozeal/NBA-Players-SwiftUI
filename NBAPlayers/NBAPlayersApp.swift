//
//  NBAPlayersApp.swift
//  NBAPlayers
//
//  Created by David U. Okonkwo on 2/12/21.
//

import SwiftUI

@main
struct NBAPlayersApp: App {
    var body: some Scene {
        WindowGroup {
            PlayerDetail(player: players[0])
        }
    }
}
