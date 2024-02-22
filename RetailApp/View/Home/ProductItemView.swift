//
//  ProductItemView.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 21/02/24.
//

import SwiftUI

struct ProductItemView: View {
    var product: Product

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }// ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)

            Text(product.name)
                .font(.title3)
                .fontWeight(.black)

            Text(product.formattedPrice)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)

        }// VStack
        .padding(.horizontal, 10)
    }
}

#Preview {
    ProductItemView(product: products.first!)
}
