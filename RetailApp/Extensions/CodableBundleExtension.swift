//
//  CodableBundleExtension.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 21/02/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T  {

        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError()
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError()
        }

        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError()
        }

        return  decodedData
    }
}
