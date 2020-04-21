//
//  NetworkManager+URLs.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/20/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import Foundation

class ApiUrls {
    
    private static let host_url = "https://api.github.com"
    
    static func repositories(key: String) -> String {
        return "\(host_url)/users/\(key)/repos"
    }
}
