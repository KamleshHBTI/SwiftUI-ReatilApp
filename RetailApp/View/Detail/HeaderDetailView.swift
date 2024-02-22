//
//  HeaderDetailView.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 21/02/24.
//

import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
    }
}

#Preview {
    HeaderDetailView()
}
