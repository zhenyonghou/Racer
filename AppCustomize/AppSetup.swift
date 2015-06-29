//
//  AppSetup.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/18.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

class AppSetup {

    class func settingForStartup() {
        
        MMCustomize.customize()
        
        AppNavigator.sharedInstance.openTabBarController()
    }
}
