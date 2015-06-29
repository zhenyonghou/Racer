//
//  AppNavigator.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/18.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

class AppNavigator {
    
    var tabBarController : MMTabBarController?
    
    static let sharedInstance = AppNavigator()
    
    init() {
        tabBarController = nil
    }
    
    func sharedAppDelegate() -> AppDelegate {
        let appDelegate : AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        return appDelegate
    }
    
    func openTabBarController() {
        if (tabBarController == nil) {
            setupTabBarViewController()
        }
        
        sharedAppDelegate().window?.rootViewController = tabBarController
    }
    
    func setupTabBarViewController() {
        let item0 = MMTabBarItem(title: "第1页", normalImage: UIImage(named: "tabbar_item0")!, selectedImage: UIImage(named: "tabbar_item0_hl")!, viewController: FirstViewController())
        
        let item1 = MMTabBarItem(title: "第2页", normalImage: UIImage(named: "tabbar_item1")!, selectedImage: UIImage(named: "tabbar_item1_hl")!, viewController: SecondViewController())
        
        let item2 = MMTabBarItem(title: "第3页", normalImage: UIImage(named: "tabbar_item2")!, selectedImage: UIImage(named: "tabbar_item2_hl")!, viewController: ThirdViewController())
        
        let item3 = MMTabBarItem(title: "第4页", normalImage: UIImage(named: "tabbar_item3")!, selectedImage: UIImage(named: "tabbar_item3_hl")!, viewController: ForthViewController())
        
        self.tabBarController = MMTabBarController()
        self.tabBarController!.setBarItems([item0, item1, item2, item3])
        
    }
}
