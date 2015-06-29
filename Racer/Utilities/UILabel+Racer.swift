//
//  UILabel+Racer.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/24.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

/**
给定宽度，行数，自适应高度
注意，前提是已经设置好了font,text
*/

extension UILabel {
    func fitSize(constantWidth width : CGFloat, limitedLines lines : Int) {
        self.numberOfLines = lines
        let fitSize = self.sizeThatFits(CGSizeMake(width, 0))

        let originPoint = self.frame.origin
        self.frame = CGRectMake(originPoint.x, originPoint.y, width, fitSize.height)
    }
    
    func fitSize(constantWidth width : CGFloat, limitedHeight maxHeight : CGFloat) {
        self.numberOfLines = 0
        let fitSize = self.sizeThatFits(CGSizeMake(width, 0))
        let originPoint = self.frame.origin
        self.frame = CGRectMake(originPoint.x, originPoint.y, fitSize.width, (maxHeight > 0) ? min(maxHeight, fitSize.height) : fitSize.height);
    }
}
