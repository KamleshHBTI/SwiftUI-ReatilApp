//
//  FeatureTabView.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 21/02/24.
//

import SwiftUI

struct FeatureTabView: View {
    var body: some View {
      TabView {
        ForEach(players) { player in
          FeatureItemView(player: player)
            .padding(.top, 10)
            .padding(.horizontal, 15)
        }
      } //: TAB
      .tabViewStyle(.page)
    }
  }

#Preview {
    FeatureTabView()
}
