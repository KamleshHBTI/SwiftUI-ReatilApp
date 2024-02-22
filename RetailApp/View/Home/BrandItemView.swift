//
//  BrandItemView.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 21/02/24.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - properties
    var brand: Brand

    var body: some View {
        Image(brand.image)
          .resizable()
          .scaledToFit()
          .padding(3)
          .background(Color.white.cornerRadius(12))
          .background(
            RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
          )
      }
}

#Preview {
    BrandItemView(brand: brands.first!)
}
