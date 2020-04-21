//
//  TypedUIButton.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/16/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import UIKit

@IBDesignable
class TypedUIButton: UIButton {
    
    enum ButtonType {
        case accept
        case dismiss
        case simple
    }
    
    var viewType: ButtonType = .simple

    @IBInspectable var type: String? {
        didSet {
            switch type?.lowercased() {
            case "simple":
                viewType = .simple
            case "accept":
                viewType = .accept
            case "dismiss":
                viewType = .dismiss
            default:
                viewType = .simple
            }
            updateView()
        }
    }
    
    @IBInspectable var title: String? {
        didSet {
            titleLabel?.text = title
            updateView()
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 8 {
        didSet {
            updateView()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        updateView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        updateView()
    }
    
    private func updateView() {
        switch viewType {
        case .simple:
            setupSimpleButton()
        case .accept:
            setupAcceptButton()
        case .dismiss:
            setupDismissButton()
        }
        layoutSubviews()
    }
}

private extension TypedUIButton {
    func setupSimpleButton() {
        titleLabel?.textColor = .gray
        
        layer.cornerRadius = cornerRadius
        layer.borderColor = AppColor.gray.cgColor
        layer.borderWidth = 1.0
        layer.backgroundColor = UIColor.clear.cgColor
    }
    
    func setupAcceptButton() {
        titleLabel?.textColor = .white
        
        layer.cornerRadius = cornerRadius
        layer.backgroundColor = AppColor.green.cgColor
        layer.borderWidth = 0
    }

    func setupDismissButton() {
        titleLabel?.textColor = .white
        
        layer.cornerRadius = cornerRadius
        layer.backgroundColor = AppColor.red.cgColor
        layer.borderWidth = 0
    }

}
