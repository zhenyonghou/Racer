//
//  MMTableViewController.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/20.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

class MMTableViewController: MMViewController, UITableViewDataSource, UITableViewDelegate {
    
    var bottomBarHeight : Float = 0
    var tableView : UITableView?
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
        self.commonInit()
        tableView = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.__buildTablaView()
    }
    
    func __buildTablaView() {
        if (tableView === nil) {
            let tempTableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain)
            tempTableView.backgroundColor = UIColor.clearColor()
            tempTableView.autoresizingMask = [.FlexibleHeight, .FlexibleWidth]
            self.view.addSubview(tempTableView)
            tempTableView.dataSource = self
            tempTableView.delegate = self
            self.tableView = tempTableView
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
