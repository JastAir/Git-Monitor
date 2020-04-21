//
//  RepositoryRequestEntity.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/21/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import Foundation

struct RepositoryRequestEntity: Codable {
    
    enum RType {
        
    }
    
    let type: String
    let sort: String
    let direction: String
}
