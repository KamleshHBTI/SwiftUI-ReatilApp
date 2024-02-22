//
//  ProductGridView.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 21/02/24.
//

import SwiftUI

struct ProductGridView: View {
    @EnvironmentObject var shop: Shop

    var body: some View {
        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 15, pinnedViews: [], content: {
            ForEach(products) { product in
                ProductItemView(product: product)
                    .onTapGesture {
                        feedback.impactOccurred()
                        withAnimation(.easeOut) {
                            shop.selectedProduct = product
                            shop.showingProduct = true
                        }
                    }
            }

        })//: Grid
        
    }
}

#Preview {
    ProductGridView()
        .environmentObject(Shop())
}
