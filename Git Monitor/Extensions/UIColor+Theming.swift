//
//  UIColor+Theming.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/23/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    // MARK: Main
    var primaryBackground: UIColor! {
        return UIColor(named: "primaryBackground")
    }
    
    var primaryBorder: UIColor! {
        return UIColor(named: "primaryBorder")
    }
    
    var primaryText: UIColor! {
        return UIColor(named: "primaryTextColor")
    }
    
    var secondaryText: UIColor! {
        return UIColor(named: "secondaryTextColor")
    }
    
    // MARK: Cells
    var cellBackground: UIColor! {
        return UIColor(named: "cellBackground")
    }
    
    var cellBorder: UIColor! {
        return UIColor(named: "cellBorder")
    }
    
    var cellPrimaryText: UIColor! {
        return UIColor(named: "cellPrimaryTextColor")
    }
    
    var cellSecondaryText: UIColor! {
        return UIColor(named: "cellSecondaryTextColor")
    }
    
    // MARK: Status
    var infoStatus: UIColor! {
        return UIColor(named: "infoStatus")
    }
    
    var successStatus: UIColor! {
        return UIColor(named: "successStatus")
    }
    
    var errorStatus: UIColor! {
        return UIColor(named: "errorStatus")
    }
}

