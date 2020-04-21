//
//  ProfileViewController.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/17/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let rest = NetworkManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getUsersList()
    }
    
    func getUsersList() {
        guard let url = URL(string: ApiUrls.repositories(key: "jastair")) else { return }

        rest.makeRequest(toURL: url, withHttpMethod: .get) { (results) in
            if let data = results.data {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                guard let userData = try? decoder.decode(RepositoryEntity.self, from: data) else { return }
             
                // impl
            }

            if let response = results.response {
                for (key, value) in response.headers.allValues() {
                    print(key, value)
                }
            }
        }
    }
}
