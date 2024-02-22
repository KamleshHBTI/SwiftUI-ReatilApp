//
//  TitleView.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 21/02/24.
//

import SwiftUI

struct TitleView: View {
    var title: String
    var body: some View {
        HStack {
            Text("Helmet")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//: HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "Helmet")
}
