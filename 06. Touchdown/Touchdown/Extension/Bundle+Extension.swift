//
//  Bundle+Extension.swift
//  Touchdown
//
//  Created by Luann Luna on 08/04/22.
//

import Foundation


extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file)")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let decoded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode")
        }
        
        return decoded
    }
}
