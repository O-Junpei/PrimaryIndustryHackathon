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
        
        viewWidth = self.view.frame.width
        viewHeight = self.view.frame.height

        //背景の登録
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "questionBG")?.draw(in: self.view.bounds)
        let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        
        
        
        let selectBtn0:UIButton = UIButton()
        selectBtn0.frame = CGRect(x: viewWidth*0.1, y: viewHeight*0.2, width: viewWidth*0.3, height: viewHeight*0.3)
        selectBtn0.setImage(UIImage(named:"q0"), for: UIControlState.normal)
        selectBtn0.addTarget(self, action: #selector(basicButtonClicked(sender:)), for:.touchUpInside)
        selectBtn0.tag = 0
        self.view.addSubview(selectBtn0)
        
        let selectBtn1:UIButton = UIButton()
        selectBtn1.frame = CGRect(x: viewWidth*0.6, y: viewHeight*0.2, width: viewWidth*0.3, height: viewHeight*0.3)
        selectBtn1.setImage(UIImage(named:"q1"), for: UIControlState.normal)
        selectBtn1.backgroundColor = UIColor.white
        selectBtn1.addTarget(self, action: #selector(basicButtonClicked(sender:)), for:.touchUpInside)
        selectBtn1.tag = 1
        self.view.addSubview(selectBtn1)
        
        let selectBtn2:UIButton = UIButton()
        selectBtn2.frame = CGRect(x: viewWidth*0.1, y: viewHeight*0.6, width: viewWidth*0.3, height: viewHeight*0.3)
        selectBtn2.setImage(UIImage(named:"q2"), for: UIControlState.normal)
        selectBtn1.backgroundColor = UIColor.white
        selectBtn2.addTarget(self, action: #selector(basicButtonClicked(sender:)), for:.touchUpInside)
        selectBtn2.tag = 2
        self.view.addSubview(selectBtn2)
        
        let selectBtn3:UIButton = UIButton()
        selectBtn3.frame = CGRect(x: viewWidth*0.6, y: viewHeight*0.6, width: viewWidth*0.3, height: viewHeight*0.3)
        selectBtn3.setImage(UIImage(named:"q3"), for: UIControlState.normal)
        selectBtn1.backgroundColor = UIColor.white
        selectBtn3.addTarget(self, action: #selector(basicButtonClicked(sender:)), for:.touchUpInside)
        selectBtn3.tag = 3
        self.view.addSubview(selectBtn3)
        


    }

    
    //basicボタンが押されたら呼ばれます
    internal func basicButtonClicked(sender: UIButton){
        print("basicButtonBtnClicked")
        let questionVC:Question1ViewController = Question1ViewController()
        self.navigationController?.pushViewController(questionVC, animated: true)
    }
    


}
