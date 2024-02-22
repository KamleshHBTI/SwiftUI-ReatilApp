//
//  Shop.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 21/02/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
