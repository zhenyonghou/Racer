//
//  UIView+Racer.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/28.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

extension UIView {
    
    var mm_top : CGFloat {
        get {
            return self.frame.origin.y
        }
        
        set {
            var tempFrame = self.frame
            tempFrame.origin.y = newValue
            self.frame = tempFrame
        }
    }
    
    var mm_left : CGFloat {
        get {
            return self.frame.origin.x
        }
        
        set {
            var tempFrame = self.frame
            tempFrame.origin.x = newValue
            self.frame = tempFrame
        }
    }
    
    var mm_bottom : CGFloat {
        get {
            return (self.frame.origin.y + self.frame.size.height)
        }
        
        set {
            var tempFrame : CGRect = self.frame
            tempFrame.origin.y = newValue - tempFrame.size.height
            self.frame = tempFrame
        }
    }
    
    var mm_right : CGFloat {
        get {
            return (self.frame.origin.x + self.frame.size.width)
        }
        
        set {
            var tempFrame : CGRect = self.frame
            tempFrame.origin.x = newValue - tempFrame.size.width
            self.frame = tempFrame
        }
    }
    
    var mm_centerX : CGFloat {
        get {
            return self.center.x
        }
        
        set {
            self.center = CGPointMake(newValue, self.center.y)
        }
    }
    
    var mm_centerY : CGFloat {
        get {
            return self.center.y
        }
        
        set {
            self.center = CGPointMake(self.center.x, newValue)
        }
    }
    
    var mm_width : CGFloat {
        get {
            return self.frame.size.width
        }
        
        set {
            var tempFrame = self.frame
            tempFrame.size.width = newValue
            self.frame = tempFrame
        }
    }
    
    var mm_height : CGFloat {
        get {
            return self.frame.size.height
        }
        
        set {
            var tempFrame = self.frame
            tempFrame.size.height = newValue
            self.frame = tempFrame
        }
    }
    
    var mm_origin : CGPoint {
        get {
            return self.frame.origin
        }
        
        set {
            var tempFrame = self.frame
            tempFrame.origin = newValue
            self.frame = tempFrame
        }
    }
    
    var mm_size : CGSize {
        get {
            return self.frame.size
        }
        
        set {
            var tempFrame = self.frame
            tempFrame.size = newValue
            self.frame = tempFrame
        }
    }
    
    func mm_set(left left : CGFloat, top : CGFloat) {
        self.mm_origin = CGPoint(x: left, y: top)
    }
    
    func mm_set(right right : CGFloat, top : CGFloat) {
        self.mm_origin = CGPoint(x: right - self.frame.size.width, y: top)
    }
    
    func mm_set(right right : CGFloat, bottom : CGFloat) {
        self.mm_origin = CGPoint(x: right - self.frame.size.width, y: bottom - self.frame.size.height)
    }

    func removeAllSubViews() {
        while (self.subviews.count > 0) {
            let child : UIView = self.subviews.last!
            child .removeFromSuperview()
        }
    }
}
