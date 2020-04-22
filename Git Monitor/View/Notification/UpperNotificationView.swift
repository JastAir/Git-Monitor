//
//  UpperNotificationView.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/16/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import UIKit
import SnapKit

protocol UpperNotificationViewDelegate {
    func onButtonTap(_ sender: UIButton)
    func onHideDrag(_ sender: UIView)
}

class UpperNotificationView: UIView {
    
    var backgroundCardColor: UIColor? = .lightGray {
        didSet {
            backgroundColor = backgroundCardColor
        }
    }
    
    var cardTextTitle: String? = "Notification text ..." {
        didSet {
            cardTextLabel.text = cardTextTitle
        }
    }
    
    var cardTextColor: UIColor? = .darkGray {
        didSet {
            cardTextLabel.textColor = cardTextColor
        }
    }
    
    var buttonTitle: String? = "OK" {
        didSet {
            actionButton.setTitle(buttonTitle, for: .normal)
        }
    }
    
    var buttonColor: UIColor? = UIColor().successStatus {
        didSet {
            actionButton.backgroundColor = buttonColor
        }
    }
    
    var buttonTitleColor: UIColor? = .white {
        didSet {
            actionButton.setTitleColor(buttonTitleColor, for: .normal)
        }
    }
    
    var delegate: UpperNotificationViewDelegate?
    
    private var actionButton: UIButton!
    private var cardTextLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        makeConstraints()
        showWithAnimate()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        makeConstraints()
        showWithAnimate()
    }
    
    private func showWithAnimate() {
        let originY = frame.origin.y
        frame.origin.y = -frame.height
        UIView.animate(withDuration: 0.25) {
            self.frame.origin.y = originY
        }
    }
    
    private func setupView() {
        actionButton = UIButton()
        actionButton.setTitle(buttonTitle, for: .normal)
        actionButton.setTitleColor(buttonTitleColor, for: .normal)
        actionButton.titleLabel?.font = UIFont.monospacedDigitSystemFont(ofSize: 14, weight: .regular)
        actionButton.backgroundColor = buttonColor
        actionButton.layer.cornerRadius = 8
        actionButton.addTarget(nil, action: #selector(onButtonTap(_:)), for: .touchUpInside)
        addSubview(actionButton)
        
        cardTextLabel = UILabel()
        cardTextLabel.text = cardTextTitle
        cardTextLabel.font = UIFont.monospacedDigitSystemFont(ofSize: 14, weight: .thin)
        cardTextLabel.textColor = cardTextColor
        cardTextLabel.numberOfLines = 0
        cardTextLabel.adjustsFontSizeToFitWidth = true
        addSubview(cardTextLabel)
        
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(onHideDrag(_:)))
        swipeGestureRecognizer.direction = .up
        addGestureRecognizer(swipeGestureRecognizer)
    }
    
    private func makeConstraints() {
        actionButton.snp.makeConstraints { (make) in
            make.right.equalToSuperview().inset(8)
            make.top.equalToSuperview().inset(8)
            make.bottom.equalToSuperview().inset(8)
            make.width.equalTo(74)
        }
        
        cardTextLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().inset(8)
            make.top.equalToSuperview().inset(8)
            make.bottom.equalToSuperview().inset(8)
            make.trailing.equalTo(actionButton.snp.leading).inset(-8)
        }
    }
}

private extension UpperNotificationView {
    @objc func onButtonTap(_ sender: UIButton) {
        UIView.animate(withDuration: 0.25, animations: {
            self.frame.origin.y = -self.frame.height
        }) { _ in
            self.removeFromSuperview()
            self.delegate?.onButtonTap(sender)
        }
    }
    
    @objc func onHideDrag(_ sender: UIView) {
        UIView.animate(withDuration: 0.25, animations: {
            self.frame.origin.y = -self.frame.height
        }) { _ in
            self.removeFromSuperview()
            self.delegate?.onHideDrag(sender)
        }
    }
}
