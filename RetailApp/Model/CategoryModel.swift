//
//  CategoryModel.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 21/02/24.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
