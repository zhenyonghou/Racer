//
//  UIColor+Racer.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/19.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(hexString : String, alphaString : String) {
        let alpha : Int = Int(alphaString)!
        self.init(hexString: hexString, alpha: alpha)
    }
    
    convenience init(hexString : String, alpha : Int) {
        var hex = hexString
        
        if hex.hasPrefix("#") {
            hex = hex.substringFromIndex(advance(hex.startIndex, 1))
        }
        
        let redHex = hex.substringToIndex(advance(hex.startIndex, 2))
        let greenHex = hex.substringWithRange(Range<String.Index>(start: advance(hex.startIndex, 2), end: advance(hex.startIndex, 4)))
        let blueHex = hex.substringWithRange(Range<String.Index>(start: advance(hex.startIndex, 4), end: advance(hex.startIndex, 6)))
        
        var redInt: UInt32 = 0
        var greenInt: UInt32 = 0
        var blueInt: UInt32 = 0
        
        NSScanner(string: redHex).scanHexInt(&redInt)
        NSScanner(string: greenHex).scanHexInt(&greenInt)
        NSScanner(string: blueHex).scanHexInt(&blueInt)
        
        self.init(red: CGFloat(redInt) / 255.0, green:CGFloat(greenInt) / 255.0, blue:CGFloat(blueInt) / 255.0, alpha:CGFloat(alpha) / 100.0)
    }
    
    convenience init(hexString : String) {
        self.init(hexString : hexString, alpha : 100)
    }
    
    convenience init(hex hexValue : Int, alpha : Int) {
        let red : CGFloat = (CGFloat)((hexValue & 0xFF0000) >> 16) / 255.0
        let green : CGFloat = (CGFloat)((hexValue & 0xFF00) >> 8) / 255.0
        let blue : CGFloat = (CGFloat)(hexValue & 0xFF) / 255.0
        let alphaValue : CGFloat = CGFloat(alpha) / 255.0
        
        self.init(red:red, green:green, blue:blue, alpha:alphaValue)
    }
    
    convenience init(hex hexValue : Int) {
        self.init(hex: hexValue, alpha: 100)
    }
}
