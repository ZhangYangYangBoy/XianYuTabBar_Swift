//
//  ViewController.swift
//  XianYuTabBar_Swift
//
//  Created by Tech-zhangyangyang on 2017/4/24.
//  Copyright © 2017年 Tech-zhangyangyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let frame = CGRect(x:0,y:self.view.frame.size.height - 50,width:self.view.frame.size.width,height:50)
        let tabBar:XianYuView = XianYuView(frame:frame)
        tabBar.backgroundColor = UIColor.green
        tabBar.isUserInteractionEnabled = true
        self.view.addSubview(tabBar)
        
        for i in 0..<5 {
            
            let x1 = self.view.bounds.size.width - 250 - 40
            let x2 = x1/4
            let x3 = 50 + x2
            let x4 = 20 + CGFloat(i) * x3
            let item  = UIView(frame: CGRect(x:x4, y: 0, width: 50, height: 50))
            let red   = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
            let green = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
            let blue  = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
            let colorRun = UIColor.init(red:red, green:green, blue:blue , alpha: 1)
            item.isUserInteractionEnabled = true
            item.backgroundColor = colorRun
            let single = UITapGestureRecognizer.init(target: self, action: #selector(clicked(sender:)))
            item.tag = 100 + i
            item.addGestureRecognizer(single)
            if i == 2 {
                item.frame = CGRect(x:20 + CGFloat(i)*(50+(self.view.bounds.size.width-250-40)/4),y: -50,width:50, height:100);
            }
            tabBar.addSubview(item)
        }
    }

    func clicked(sender:UITapGestureRecognizer) {
        let index = (sender.view?.tag)! - 100
        print("click \(index) view")
    }
}

