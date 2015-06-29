//
//  MMApplication.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/24.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

class MMApplication {
    class func applicationName() -> String {
        return (NSBundle.mainBundle().infoDictionary?["CFBundleDisplayName"]) as! String
    }
    
    class func applicationVersion() -> String {
        return (NSBundle.mainBundle().infoDictionary?["CFBundleShortVersionString"]) as! String
    }
    
    class func applicationBuildVersion() -> String {
        return (NSBundle.mainBundle().infoDictionary?["CFBundleVersion"]) as! String
    }
    
    class func documentPath() -> String {
        let array : Array<String> = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        return array[0]
    }
    
    class func cachesPath() -> String {
        let array : Array<String> = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.CachesDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        return array[0]
    }
    
    class func gotoItunesForDownloadApp(appId : String) {
        let downloadUrl = "http://itunes.apple.com/app/id\(appId)?mt=8"
        UIApplication.sharedApplication().openURL(NSURL(string: downloadUrl)!)
    }
}