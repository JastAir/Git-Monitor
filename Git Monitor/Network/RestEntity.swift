//
//  RestEntity.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/20/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import Foundation

struct RestEntity {
    private var values: [String: String] = [:]
 
    mutating func add(value: String, forKey key: String) {
        values[key] = value
    }
 
    func value(forKey key: String) -> String? {
        return values[key]
    }
 
    func allValues() -> [String: String] {
        return values
    }
 
    func totalItems() -> Int {
        return values.count
    }
}
