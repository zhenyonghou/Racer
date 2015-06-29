//
//  UIDevice+Racer.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/23.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

extension UIDevice {
    class func deviceModel() -> String {
        var size : Int = 0
        sysctlbyname("hw.machine", nil, &size, nil, 0)
        var machine = [CChar](count: Int(size), repeatedValue: 0)
        sysctlbyname("hw.machine", &machine, &size, nil, 0);
        return String.fromCString(machine)!
    }
    
    class func isJailbroken() -> Bool {
        #if TARGET_IPHONE_SIMULATOR
            return false
        #else
            var isJailbroken = false
            let cydiaInstalled : Bool = NSFileManager.defaultManager().fileExistsAtPath("/Applications/Cydia.app")
            
            let fileHandle : UnsafeMutablePointer<FILE> = fopen("/bin/bash", "r")
            
            if (!(errno == ENOENT) && cydiaInstalled) {
                
                //Device is jailbroken
                isJailbroken = true;
            }
            fclose(fileHandle);
            
            return isJailbroken
        #endif
    }
}

