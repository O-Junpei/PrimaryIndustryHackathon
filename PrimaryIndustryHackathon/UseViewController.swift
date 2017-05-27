//
//  UseViewController.swift
//  PrimaryIndustryHackathon
//
//  Created by junpei ono on 2017/05/27.
//  Copyright © 2017年 junpei ono. All rights reserved.
//

import UIKit
import SCLAlertView

class UseViewController: UIViewController {
    
    var viewWidth:CGFloat!
    var viewHeight:CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewWidth = self.view.frame.width
        viewHeight = self.view.frame.height
        self.view.backgroundColor = UIColor.white
        
        setNavigationBar()
        setButton()

    }
    
    
    // MARK: NavigationBar
    func setNavigationBar() {
        
        self.navigationController?.navigationBar.isTranslucent = false
        UINavigationBar.appearance().tintColor = UIColor.white
        
        //ナビゲーションアイテムを作成
        let titleLabel:UILabel = UILabel()
        titleLabel.frame = CGRect(x: viewWidth*0.3, y: 0, width: viewWidth*0.4, height: PARTS_HEIGHT_NAVIGATION_BAR)
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.text = "使い道"
        titleLabel.textColor = UIColor.black
        
        self.navigationItem.titleView = titleLabel
    }
    
    // MARK: NavigationBar
    func setButton() {
        
        
        //角丸ボタン
        let cornerCircleButton = UIButton()
        cornerCircleButton.frame = CGRect(x: 50, y: 120, width: 200, height: 40)
        cornerCircleButton.backgroundColor = UIColor.gray
        cornerCircleButton.addTarget(self, action: #selector(cornerCircleButtonClicked(sender:)), for:.touchUpInside)
        cornerCircleButton.setTitle("ボタンだよ", for: UIControlState.normal)
        cornerCircleButton.setTitle("押された時", for: UIControlState.highlighted)
        cornerCircleButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        cornerCircleButton.layer.masksToBounds = true
        cornerCircleButton.layer.cornerRadius = 20.0
        self.view.addSubview(cornerCircleButton)
        
        
        
        //結果画面
        let goResultButton = UIButton()
        goResultButton.frame = CGRect(x: 200, y: 120, width: 200, height: 40)
        goResultButton.backgroundColor = UIColor.gray
        goResultButton.addTarget(self, action: #selector(goResultButtonClicked(sender:)), for:.touchUpInside)
        goResultButton.setTitle("けっかがめnだよ", for: UIControlState.normal)
        goResultButton.setTitle("押された時", for: UIControlState.highlighted)
        goResultButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        goResultButton.layer.masksToBounds = true
        goResultButton.layer.cornerRadius = 20.0
        self.view.addSubview(goResultButton)

    }
    
    
    //角丸ボタンが押されたら呼ばれます
    internal func cornerCircleButtonClicked(sender: UIButton){
        print("cornerCircleButtonBtnClicked")
        
        let alertView = SCLAlertView()
        alertView.addButton("First Button", target:self, selector:Selector(("firstButton")))
        alertView.addButton("Second Button") {
            print("Second button tapped")
        }
        alertView.showSuccess("Button View", subTitle: "This alert view has buttons")
    }

    
    //
    internal func goResultButtonClicked(sender: UIButton){
        let resultVC:ResultViewController = ResultViewController()
        self.navigationController?.pushViewController(resultVC, animated: true)
        
    }
}
