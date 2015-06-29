//
//  UIButton+Racer.swift
//  LxRacer
//
//  Created by zhenyonghou on 15/6/28.
//  Copyright © 2015年 zhenyonghou. All rights reserved.
//

import UIKit

extension UIButton {
    /**
    仅适用于左边图片右边文字的时候
    */
    func setTitleAndImageHorizontalSpacing(spacing : CGFloat) {
        self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing / 2, 0, -spacing / 2);
        self.imageEdgeInsets = UIEdgeInsetsMake(0, -spacing / 2, 0, spacing / 2);
    }
}
