//
//  UpperNotificationView.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/16/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import UIKit

protocol UpperNotificationViewDelegate {
    func onButtonTap()
    func onCardTap()
}

@IBDesignable
class UpperNotificationView: UIView {
    
    @IBInspectable var backgroundCardColor: UIColor? = .lightGray {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var cardTextTitle: String? = "Notification text ..." {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var cardTextColor: UIColor? = .darkGray {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var buttonTitle: String? = "OK" {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var buttonColor: UIColor? = .green {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var buttonTitleColor: UIColor? = .white {
        didSet {
            setNeedsDisplay()
        }
    }
    
    var delegate: UpperNotificationViewDelegate?
    
    private var actionButton: UIButton!
    private var cardTextLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupView() {
        actionButton = UIButton()
        actionButton.titleLabel?.text = buttonTitle
        actionButton.backgroundColor = buttonColor
        actionButton.setTitleColor(buttonTitleColor, for: .normal)
        
        cardTextLabel = UILabel()
        cardTextLabel.text = cardTextTitle
        cardTextLabel.textColor = cardTextColor
        cardTextLabel.lineBreakMode = .byWordWrapping
    }
    
    private func makeConstraints() {
        actionButton.
    }
}
