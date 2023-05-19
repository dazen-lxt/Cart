//
//  Bundle+decode.swift
//  Cart
//
//  Created by Carlos Mario Muñoz on 7/05/23.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError()
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError()
        }
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .deferredToDate
        decoder.keyDecodingStrategy = .useDefaultKeys
        
        do {
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError()
        }
    }
}
