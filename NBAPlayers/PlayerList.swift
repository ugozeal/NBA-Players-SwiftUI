//
//  PlayerList.swift
//  NBAPlayers
//
//  Created by David U. Okonkwo on 2/12/21.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in
                NavigationLink(destination: PlayerDetail(player: currentPlayer)) {
                    PlayerRow(player: currentPlayer).frame(height: 60)
                }
            }
            .navigationTitle(Text("NBA Players"))
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
