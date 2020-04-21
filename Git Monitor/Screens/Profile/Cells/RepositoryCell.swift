//
//  RepositoryCell.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/17/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import UIKit

class RepositoryCell: UICollectionViewCell {

    @IBOutlet private weak var repositoryNameLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    @IBOutlet private weak var languagePointImageView: UIImageView!
    @IBOutlet private weak var languageNameLabel: UILabel!
    
    @IBOutlet private weak var starsLabel: UILabel!
    @IBOutlet private weak var branchLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 8
    }

}
