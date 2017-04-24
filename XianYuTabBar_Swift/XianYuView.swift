//
//  XianYuView.swift
//  XianYuTabBar_Swift
//
//  Created by Tech-zhangyangyang on 2017/4/24.
//  Copyright © 2017年 Tech-zhangyangyang. All rights reserved.
//

import UIKit

class XianYuView: UIView {
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        var toNext:Bool = true
        for view in self.subviews {
            if view.bounds.contains(point) {
                toNext = false
                break
            }
        }
        return !toNext
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        var view = super.hitTest(point, with: event)
        if view == nil {
            for subView in self.subviews {
                let tp:CGPoint = self.convert(point, to: subView)
                if subView.bounds.contains(tp) {
                    view = subView
                }
            }
        }
        return view
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}


