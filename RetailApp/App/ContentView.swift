//
//  ContentView.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: -
    @EnvironmentObject var shop: Shop

    // MARK: - Body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeatureTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.75)
                                .padding(.vertical, 20)
                            CategoryGridView()

                            TitleView(title: "Helmet")
                            ProductGridView()
                            TitleView(title: "Brands")
                            BrandGridView()
                            FooterView()
                                .padding(.horizontal)
                        }//VStack
                    }) //ScrollView

                }// VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } // ZStack
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
