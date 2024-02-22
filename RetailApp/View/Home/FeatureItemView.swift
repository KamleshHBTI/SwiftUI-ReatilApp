//
//  FeatureItemView.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 21/02/24.
//

import SwiftUI

struct FeatureItemView: View {
    // MARK: - Properties
    let player: Player

    // MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    FeatureItemView(player: players.first!)
}
