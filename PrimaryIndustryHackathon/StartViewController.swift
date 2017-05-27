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
        
        
        //背景の登録
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "startBG")?.draw(in: self.view.bounds)
        
        let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        
        self.view.backgroundColor = UIColor(patternImage: image)
        

        //ボタンの生成
        let startButton = UIButton()
        
        //ボタンの位置と大きさの指定
        //x:50,y:50の位置に横幅200:縦40のボタンを設置
        startButton.frame = CGRect(x: 50, y: 50, width: 200, height: 40)
        
        //背景色の指定、灰色
        startButton.backgroundColor = UIColor.gray
        
        //押された時のアクションを設定
        startButton.addTarget(self, action: #selector(startButtonButtonClicked(sender:)), for:.touchUpInside)
        
        //ボタンのテキストを設定
        startButton.setTitle("スタート", for: UIControlState.normal)
        //tartButton.setTitle("押された時", for: UIControlState.highlighted)
        
        //テキストの色を指定
        startButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        
        //Viewに配置
        self.view.addSubview(startButton)

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //basicボタンが押されたら呼ばれます
    internal func startButtonButtonClicked(sender: UIButton){
        print("basicButtonBtnClicked")
        
        let useVC:UseViewController = UseViewController()
        self.navigationController?.pushViewController(useVC, animated: true)
    }


}

