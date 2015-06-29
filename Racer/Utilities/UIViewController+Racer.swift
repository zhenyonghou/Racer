//
//  UIViewController+Racer.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/23.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

extension UIViewController {
    func setNewTitle(newTitle : String) {
        self.navigationItem.title = newTitle
    }
    
    func setLeftButton(title title : String, action : Selector) {
        self .setLeftButton(title: title, target: self, action: action)
    }
    
    func setLeftButton(title title : String, target : AnyObject, action : Selector) {
        let barItem = UIBarButtonItem(title: title, style: UIBarButtonItemStyle.Plain, target: target, action: action)
        self.navigationItem.leftBarButtonItem = barItem
    }
    
    func setLeftButton(image : UIImage, action : Selector) {
        self.setLeftButton(image, target: self, action: action)
    }
    
    func setLeftButton(image : UIImage, target : AnyObject, action : Selector) {
        let barItem = UIBarButtonItem(image: image, style: UIBarButtonItemStyle.Plain, target: target, action: action)
        self.navigationItem.leftBarButtonItem = barItem
    }
    
    
    func setRightButton(title title : String, action : Selector) {
        self.setRightButton(title: title, target: self, action: action)
    }
    
    func setRightButton(title title : String, target : AnyObject, action : Selector) {
        let barItem = UIBarButtonItem(title: title, style: UIBarButtonItemStyle.Plain, target: target, action: action)
        self.navigationItem.rightBarButtonItem = barItem
    }
    
    func setRightButton(image : UIImage, action : Selector) {
        self.setRightButton(image, target: self, action: action)
    }
    
    func setRightButton(image : UIImage, target : AnyObject, action : Selector) {
        let barItem = UIBarButtonItem(image: image, style: UIBarButtonItemStyle.Plain, target: target, action: action)
        self.navigationItem.rightBarButtonItem = barItem
    }
    
    // customize bar button item

    func customizeBarButton(normalImage : UIImage, highlightedImage : UIImage, target : AnyObject, action : Selector) -> UIButton {
        let button = UIButton(type : UIButtonType.Custom)
        button.setImage(normalImage, forState: UIControlState.Normal)
        button.setImage(highlightedImage, forState: UIControlState.Highlighted)
        button.addTarget(target, action: action, forControlEvents: UIControlEvents.TouchUpInside)
        return button
    }
    
    func setLeftButton(normalImage : UIImage, highlightedImage : UIImage, target : AnyObject, action : Selector) {
        let button = customizeBarButton(normalImage, highlightedImage: highlightedImage, target: target, action: action)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
    }
    
    func setRightButton(normalImage : UIImage, highlightedImage : UIImage, target : AnyObject, action : Selector) {
        let button = customizeBarButton(normalImage, highlightedImage: highlightedImage, target: target, action: action)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
    }
    
    // TODO: back button item
    
}
