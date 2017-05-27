//
//  WoManModalViewController.swift
//  PrimaryIndustryHackathon
//
//  Created by junpei ono on 2017/05/27.
//  Copyright © 2017年 junpei ono. All rights reserved.
//

import UIKit

class WoManModalViewController: UIViewController {

    
    public var q0:String =  "彼女"
    public var q1:String = "奥さん"
    public var q2:String = "お母さん"
    public var q3:String = "おばあちゃん"
    
    var viewWidth:CGFloat!
    var viewHeight:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewWidth = self.view.frame.width
        viewHeight = self.view.frame.height
        
        self.view.backgroundColor = UIColor.clear
        //self.view.alpha = 0.7
        
        let selectView:UIView = UIView()
        selectView.frame = CGRect(x: viewWidth*0.1, y: viewHeight*0.1, width: viewWidth*0.8, height: viewHeight*0.8)
        selectView.backgroundColor = UIColor.gray
        selectView.alpha = 0.9
        self.view.addSubview(selectView)
        
        let selectViewWidth:CGFloat = viewWidth*0.8
        let selectViewHeight:CGFloat = viewHeight*0.8
        
        
        
        let selectBtn0:UIButton = UIButton()
        selectBtn0.frame = CGRect(x: selectViewWidth*0.1, y: selectViewHeight*0.1, width: selectViewWidth*0.3, height: selectViewHeight*0.3)
        selectBtn0.backgroundColor = UIColor.orange
        selectBtn0.setTitle(q0, for: UIControlState.normal)
        selectBtn0.addTarget(self, action: #selector(basicButtonClicked(sender:)), for:.touchUpInside)
        selectBtn0.tag = 0
        selectView.addSubview(selectBtn0)
        
        let selectBtn1:UIButton = UIButton()
        selectBtn1.frame = CGRect(x: selectViewWidth*0.6, y: selectViewHeight*0.1, width: selectViewWidth*0.3, height: selectViewHeight*0.3)
        selectBtn1.backgroundColor = UIColor.orange
        selectBtn1.setTitle(q1, for: UIControlState.normal)
        selectBtn1.addTarget(self, action: #selector(basicButtonClicked(sender:)), for:.touchUpInside)
        selectBtn1.tag = 1
        selectView.addSubview(selectBtn1)
        
        let selectBtn2:UIButton = UIButton()
        selectBtn2.frame = CGRect(x: selectViewWidth*0.1, y: selectViewHeight*0.6, width: selectViewWidth*0.3, height: selectViewHeight*0.3)
        selectBtn2.backgroundColor = UIColor.orange
        selectBtn2.setTitle(q2, for: UIControlState.normal)
        selectBtn2.addTarget(self, action: #selector(basicButtonClicked(sender:)), for:.touchUpInside)
        selectBtn2.tag = 2
        selectView.addSubview(selectBtn2)
        
        let selectBtn3:UIButton = UIButton()
        selectBtn3.frame = CGRect(x: selectViewWidth*0.6, y: selectViewHeight*0.6, width: selectViewWidth*0.3, height: selectViewHeight*0.3)
        selectBtn3.backgroundColor = UIColor.orange
        selectBtn3.setTitle(q3, for: UIControlState.normal)
        selectBtn3.addTarget(self, action: #selector(basicButtonClicked(sender:)), for:.touchUpInside)
        selectBtn3.tag = 3
        selectView.addSubview(selectBtn3)
        
        
    }
    
    //basicボタンが押されたら呼ばれます
    internal func basicButtonClicked(sender: UIButton){
        print("basicButtonBtnClicked")
        
        if sender.tag == 0{
            UseViewController.setSenttoLabel(season: q0)
        }else if  sender.tag == 1{
            UseViewController.setSenttoLabel(season: q1)
            
        }else if  sender.tag == 2{
            UseViewController.setSenttoLabel(season: q2)
            
        }else{
            UseViewController.setSenttoLabel(season: q3)
        }
        
        self.dismiss(animated: true)
    }

}
