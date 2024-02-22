//
//  ProductDetailView.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 21/02/24.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            // Header detail View
            HeaderDetailView()
                .padding(.horizontal)

            // Top Part detail view
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)

            // Detail bottom View
            VStack(alignment: .center, spacing: 0) {

                // RATINGS + SIZES
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)

                // Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                }

                // QuantityFavouriteDetailView
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)

                // AddToCartDetailView
                AddToCartDetailView()
                    .padding(.bottom, 20)
                Spacer()
            }//: VStack
            .background(.white)
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape())
                .padding(.top, -105)
            )

        }//: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
              red: shop.selectedProduct?.red ?? sampleProduct.red,
              green: shop.selectedProduct?.green ?? sampleProduct.green,
              blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
          )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
