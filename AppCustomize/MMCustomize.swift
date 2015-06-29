//
//  MMCustomize.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/18.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

class MMCustomize {
    
    class func customize() {
        MMCustomize.customizeNavigationBar()
        MMCustomize.customizeStatusBar()
    }
    
    class func customizeNavigationBar() {
        UINavigationBar.appearance().tintColor = skin_color("color_navibar_title")
        UINavigationBar.appearance().barTintColor = skin_color("color_navibar_bg")   
    }
    
    class func customizeStatusBar() {
        // 必须在XXX-info.plist中设置：View controller-based status bar appearance 为 NO
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
    }
}