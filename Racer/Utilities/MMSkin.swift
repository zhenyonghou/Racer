//
//  MMSkin.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/19.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import Foundation
import UIKit

class MMResourceManager {
    let skinData : NSDictionary
    
    static let sharedInstance = MMResourceManager()
    
    init() {
        let skinPath = NSBundle.mainBundle().pathForResource("font_color", ofType: "plist")
        skinData = NSDictionary(contentsOfFile: skinPath!)!
    }
    
    func dataForKey(key : String) -> AnyObject? {
        return skinData.objectForKey(key)
    }
}

class MMSkin {
    static let sharedInstance = MMSkin()
    
    func imageForKey(key : String) -> UIImage {
        return UIImage(named: key)!
    }
    
    func colorForKey(key : String) -> UIColor {
        var color : UIColor = UIColor.blackColor()
        
        let colorString : String = MMResourceManager.sharedInstance.dataForKey(key) as! String
        if !colorString.isEmpty {
            let colorHexStringAndAlpha : Array<String> = colorString.componentsSeparatedByString(",")
            if colorHexStringAndAlpha.count == 1 {
                color = UIColor(hexString: colorHexStringAndAlpha[0])
            } else if colorHexStringAndAlpha.count == 2 {
                color = UIColor(hexString: colorHexStringAndAlpha[0], alphaString: colorHexStringAndAlpha[1])
            } else {
                
            }
        }
        return color
    }
    
    func fontForKey(key : String) -> UIFont {
        let fontDic : Dictionary = MMResourceManager.sharedInstance.dataForKey(key) as! Dictionary<String, AnyObject>
        
        let fontName : String = fontDic["name"] as! String
        let size : Int = fontDic["size"] as! Int
        
        return UIFont(name: fontName, size: CGFloat(size))!
    }
}

// 为访问资源提供了便利

func skin_color(key : String) -> UIColor {
    return MMSkin.sharedInstance.colorForKey(key)
}

func skin_font(key : String) -> UIFont {
    return MMSkin.sharedInstance.fontForKey(key)
}

func skin_image(key : String) -> UIImage {
    return UIImage(named: key)!
}

