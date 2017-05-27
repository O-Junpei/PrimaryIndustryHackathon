//
//  QuestionViewController.swift
//  PrimaryIndustryHackathon
//
//  Created by junpei ono on 2017/05/27.
//  Copyright © 2017年 junpei ono. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var viewWidth:CGFloat!
    var viewHeight:CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        //背景の登録
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "questionBG")?.draw(in: self.view.bounds)
        let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
    
    }


}
