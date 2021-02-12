//
//  ContentView.swift
//  NBAPlayers
//
//  Created by David U. Okonkwo on 2/12/21.
//

import SwiftUI

struct PlayerDetail: View {
    var player: Player
    var body: some View {
        VStack {
            Image(player.team.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image(player.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .offset(x: 0, y: -90)
                .padding(.bottom, -90)
                .shadow(radius: 15 )

            Text(player.name)
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .lineLimit(1)
                .padding(.leading)
                .padding(.trailing)
                .minimumScaleFactor(0.5)
            StatText(statName: "Age", statValue: "\(player.age)")
            StatText(statName: "Height", statValue: player.height)
            StatText(statName: "Weight", statValue: "\(player.weight)lbs")
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerDetail(player: players[0]).environment(\.sizeCategory, .extraExtraExtraLarge).previewDevice("iPhone SE (2nd generation)")
            PlayerDetail(player: players[0]).environment(\.sizeCategory, .extraSmall).previewDevice("iPhone SE (2nd generation)")
            PlayerDetail(player: players[0]).environment(\.sizeCategory, .extraExtraExtraLarge).previewDevice("iPhone 8")
            PlayerDetail(player: players[0]).environment(\.sizeCategory, .extraExtraExtraLarge).previewDevice("iPhone 11 Pro Max")


        }
    }
}
