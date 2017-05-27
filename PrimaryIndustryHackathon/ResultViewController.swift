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
        
        
        
        self.view.backgroundColor = UIColor.green
        
        setNavigationBar()
        
    }
    
    
    // MARK: NavigationBar
    func setNavigationBar() {
        
        self.navigationController?.navigationBar.isTranslucent = false
        UINavigationBar.appearance().tintColor = UIColor.white
        
        //ナビゲーションアイテムを作成
        let titleLabel:UILabel = UILabel()
        titleLabel.frame = CGRect(x: viewWidth*0.3, y: 0, width: viewWidth*0.4, height: PARTS_HEIGHT_NAVIGATION_BAR)
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.text = "結果画面"
        titleLabel.textColor = UIColor.black
        
        self.navigationItem.titleView = titleLabel
    }

}
