//
//  ResultViewController.swift
//  PrimaryIndustryHackathon
//
//  Created by junpei ono on 2017/05/27.
//  Copyright © 2017年 junpei ono. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var viewWidth:CGFloat!
    var viewHeight:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewWidth = self.view.frame.width
        viewHeight = self.view.frame.height
        
        
        //背景の登録
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "resultBG")?.draw(in: self.view.bounds)
        let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        

    }
}
