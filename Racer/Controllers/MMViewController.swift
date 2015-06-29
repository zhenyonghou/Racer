//
//  MMViewController.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/20.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

class MMViewController: UIViewController {
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nil, bundle: nil)
        self.commonInit()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    func commonInit() {
        self.hidesBottomBarWhenPushed = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = skin_color("color_vc_view_bg")
    }
    
    func isVisible() -> Bool {
        return ((self.view.window != nil) && self.isViewLoaded())
    }
}
