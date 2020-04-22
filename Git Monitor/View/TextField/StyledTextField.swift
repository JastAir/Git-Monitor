//
//  StyledTextField.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/16/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import UIKit

enum StyledTextFieldType {
    case info
    case success
    case error
}

class StyledTextField: UITextField {
    
    var type: StyledTextFieldType = .info
    
    private let padding = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)

    override func layoutSubviews() {
        super.layoutSubviews()
        
        borderStyle = .none
        
        layer.cornerRadius = 8
        layer.borderWidth = 1
        
        switch type {
        case .info:
            layer.borderColor = UIColor().infoStatus.cgColor
        case .success:
            layer.borderColor = UIColor().successStatus.cgColor
        case .error:
            layer.borderColor = UIColor().errorStatus.cgColor
        }
    }
}

extension StyledTextField {
    internal override func textRect(forBounds bounds: CGRect) -> CGRect {
      return bounds.inset(by: padding)
    }
    
    internal override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
      return bounds.inset(by: padding)
    }
    
    internal override func editingRect(forBounds bounds: CGRect) -> CGRect {
      return bounds.inset(by: padding)
    }
}
