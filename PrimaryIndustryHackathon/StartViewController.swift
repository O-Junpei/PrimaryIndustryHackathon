//
//  ViewController.swift
//  PrimaryIndustryHackathon
//
//  Created by junpei ono on 2017/05/27.
//  Copyright © 2017年 junpei ono. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    var viewWidth:CGFloat!
    var viewHeight:CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewWidth = self.view.frame.width
        viewHeight = self.view.frame.height
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        //背景の登録
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "startBG")?.draw(in: self.view.bounds)
        let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)

        
        //ロゴの設定
        let logoImgView:UIImageView = UIImageView()
        logoImgView.image = UIImage(named:"Flower_Sommlier")
        logoImgView.frame = CGRect(x: viewWidth*0.2, y: viewHeight*0.23, width: viewWidth*0.7, height: viewHeight*0.11)
        self.view.addSubview(logoImgView)
        
        
        //ボタン
        let startButton = UIButton()
        startButton.frame = CGRect(x: viewWidth*0.08, y: viewHeight*0.66, width: viewWidth*0.48, height: viewHeight*0.1)
        startButton.addTarget(self, action: #selector(startButtonButtonClicked(sender:)), for:.touchUpInside)
        
        //ボタン背景を画像にしてみます
        let buttonImage:UIImage = UIImage(named: "startBtn")!
        startButton.setBackgroundImage(buttonImage, for: UIControlState.normal)
        self.view.addSubview(startButton)

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: NavigationBar
    func setNavigationBar() {
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
       // self.navigationController?.navigationBar.isTranslucent = true
        /*
        UINavigationBar.appearance().tintColor = UIColor.white
        
        //ナビゲーションアイテムを作成
        let titleLabel:UILabel = UILabel()
        titleLabel.frame = CGRect(x: viewWidth*0.3, y: 0, width: viewWidth*0.4, height: PARTS_HEIGHT_NAVIGATION_BAR)
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.text = "使い道"
        titleLabel.textColor = UIColor.black
        
        self.navigationItem.titleView = titleLabel
         */
    }
    
    
    
    
    //basicボタンが押されたら呼ばれます
    internal func startButtonButtonClicked(sender: UIButton){
        print("basicButtonBtnClicked")
        
        let useVC:UseViewController = UseViewController()
        self.navigationController?.pushViewController(useVC, animated: true)
    }


}

