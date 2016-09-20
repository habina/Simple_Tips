//
//  Style.swift
//  caltip
//
//  Created by Chen, Dasheng on 9/19/16.
//  Copyright © 2016 Chen, Dasheng. All rights reserved.
//

import UIKit

struct Style{
    // MARK: ToDo Table Section Headers
    static var sectionHeaderTitleFont = UIFont(name: "Helvetica", size: 18)
    static var sectionHeaderTitleColor = UIColor.green
    static var sectionHeaderBackgroundColor = UIColor.black
    static var sectionHeaderBackgroundColorHighlighted = UIColor.lightGray
    static var sectionHeaderAlpha: CGFloat = 1.0
    
    static func themeBlue(){
        // MARK: ToDo Table Section Headers
        sectionHeaderTitleFont = UIFont(name: "Helvetica", size: 18)
        sectionHeaderTitleColor = UIColor.white
        sectionHeaderBackgroundColor = UIColor.blue
        sectionHeaderBackgroundColorHighlighted = UIColor.lightGray
        sectionHeaderAlpha = 0.8
    }
}
