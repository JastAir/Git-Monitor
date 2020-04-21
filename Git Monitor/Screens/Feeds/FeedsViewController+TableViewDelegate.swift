//
//  FeedsViewController+TableViewDelegate.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/15/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import UIKit

extension FeedsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
