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
    static var sectionHeaderTitleColor = UIColor.black
    static var sectionHeaderBackgroundColor = UIColor.white
    static var sectionHeaderBackgroundColorHighlighted = UIColor.lightGray
    static var sectionHeaderAlpha: CGFloat = 1.0
    
    static func themeDark(){
        // MARK: ToDo Table Section Headers
        sectionHeaderTitleColor = UIColor.green
        sectionHeaderBackgroundColor = UIColor.black
    }
    
    static func themeLight() {
        sectionHeaderTitleColor = UIColor.black
        sectionHeaderBackgroundColor = UIColor.white
    }
}
