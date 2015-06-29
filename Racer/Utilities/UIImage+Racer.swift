//
//  UIImage+Racer.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/20.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

extension UIImage {
    
    class func imageWithColor(color : UIColor, imageSize : CGSize) -> UIImage {
        let rect : CGRect = CGRectMake(0, 0, imageSize.width, imageSize.height);
        UIGraphicsBeginImageContext(rect.size);
        let context : CGContextRef = UIGraphicsGetCurrentContext();
        
        CGContextSetFillColorWithColor(context, color.CGColor);
        CGContextFillRect(context, rect);
        
        let image : UIImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        return image
    }
    
    class func imageWithColor(color : UIColor) -> UIImage{
        return UIImage.imageWithColor(color, imageSize: CGSizeMake(1, 1))
    }
}