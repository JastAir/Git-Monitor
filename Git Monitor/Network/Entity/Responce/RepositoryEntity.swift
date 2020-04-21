//
//  RepositoryEntity.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/20/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import Foundation

struct RepositoryEntity: Codable, CustomStringConvertible {
    var description: String
    
    let id: Int
    let full_name: String
}
