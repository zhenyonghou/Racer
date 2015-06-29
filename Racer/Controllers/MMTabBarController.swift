//
//  MMTabBarController.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/17.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

class MMTabBarItem {
    var tabBarItem : UITabBarItem

    var viewController : UIViewController
    
    init(title : String, normalImage : UIImage, selectedImage : UIImage, viewController : UIViewController) {
        let image0 = normalImage.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let image1 = selectedImage.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        self.tabBarItem = UITabBarItem(title: title, image: image0, selectedImage: image1)
        self.viewController = viewController
    }
}

class MMTabBarController: UITabBarController {

    var tempControllers = Array<UINavigationController>()
    
    func setBarItems(barItems : Array<MMTabBarItem>) {
        for customizedBarItem in barItems {
            let tabBarItem : UITabBarItem = customizedBarItem.tabBarItem
            
            let normalAttributes : Dictionary = [NSFontAttributeName : skin_font("font_0"), NSForegroundColorAttributeName : skin_color("color_tabbar_normal")]
            let selectedAttributes : Dictionary = [NSFontAttributeName : skin_font("font_0"), NSForegroundColorAttributeName : skin_color("color_main")]
            
            tabBarItem.setTitleTextAttributes(normalAttributes, forState: UIControlState.Normal)
            tabBarItem.setTitleTextAttributes(selectedAttributes, forState: UIControlState.Selected)
            
            let navigationController = UINavigationController(rootViewController: customizedBarItem.viewController)
            navigationController.tabBarItem = tabBarItem
            
            tempControllers.append(navigationController)
        }
        
        self.viewControllers = tempControllers
    }
}
