//
//  RacerConstant.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/20.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import Foundation
import UIKit

func ios_version() -> Float {
    return Float(UIDevice.currentDevice().systemVersion)!
}

func screen_width() -> CGFloat {
    return CGFloat(UIScreen.mainScreen().bounds.size.width)
}

func screen_height() -> CGFloat {
    return CGFloat(UIScreen.mainScreen().bounds.size.height)
}

let PHONE_STATUSBAR_HEIGHT : CGFloat        = 20
let PHONE_NAVIGATIONBAR_HEIGHT : CGFloat    = 44
let PHONE_TOOLBAR_HEIGHT : CGFloat          = 44
let PHONE_TABBAR_HEIGHT : CGFloat           = 49
