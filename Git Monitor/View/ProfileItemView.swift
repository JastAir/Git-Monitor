//
//  ProfileItemView.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/17/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import UIKit

@IBDesignable
class ProfileItemView: UIView {

    private var imageContainer: UIImageView!
    var profileImage = UIImage(named: "avatar_placeholder") {
        didSet {
            imageContainer.image = profileImage
        }
    }
    
    @IBInspectable let borderWeight: CGFloat = 1.0
    @IBInspectable let borderColor: UIColor = AppColor.gray
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    private func setupView() {
        clipsToBounds = true
        backgroundColor = .clear
        
        layer.cornerRadius = frame.height / 2
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWeight
        
        imageContainer = UIImageView()
        imageContainer.image = profileImage
        addSubview(imageContainer)
        
        imageContainer.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
}
