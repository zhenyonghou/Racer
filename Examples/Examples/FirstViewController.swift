//
//  FirstViewController.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/17.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

class FirstViewController: MMViewController {
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
        
        self.setNewTitle("第1页")
    }
}
