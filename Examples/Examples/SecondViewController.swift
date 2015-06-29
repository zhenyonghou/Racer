//
//  SecondViewController.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/18.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

class SecondViewController: MMViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.hidesBottomBarWhenPushed = false
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.hidesBottomBarWhenPushed = false
    }
    
    override func loadView() {
        super.loadView()
        
        navigationItem.title = "第2页"
        
    }
}
