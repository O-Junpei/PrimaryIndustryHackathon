//
//  UseViewController.swift
//  PrimaryIndustryHackathon
//
//  Created by junpei ono on 2017/05/27.
//  Copyright © 2017年 junpei ono. All rights reserved.
//

import UIKit
import SCLAlertView

public var usageText:String = ""
public var usageLabel:UILabel!
public var sendToLabel:UILabel!


class UseViewController: UIViewController {
    
    var viewWidth:CGFloat!
    var viewHeight:CGFloat!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewWidth = self.view.frame.width
        viewHeight = self.view.frame.height
        self.view.backgroundColor = UIColor.white
        
        //背景の登録
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "usageBG")?.draw(in: self.view.bounds)
        let image: UIImage! = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        
        //usageBtn
        let usageeButton = UIButton()
        usageeButton.frame = CGRect(x: viewWidth*0.08, y: viewHeight*0.34, width: viewWidth*0.34, height: viewWidth*0.34)
        usageeButton.backgroundColor = UIColor.magenta
        usageeButton.setImage(UIImage(named:"usageBtn"), for: UIControlState.normal)
        usageeButton.addTarget(self, action: #selector(usageeButtonClicked(sender:)), for:.touchUpInside)
        usageeButton.layer.masksToBounds = true
        usageeButton.layer.cornerRadius = 20.0
        usageeButton.backgroundColor = UIColor.clear
        self.view.addSubview(usageeButton)
        
        //UserBtnLabel
        usageLabel = UILabel()
        usageLabel.text = usageText
        usageLabel.frame = CGRect(x: viewWidth*0.34*0.2, y: viewWidth*0.34*0.5, width: viewWidth*0.34*0.6, height: viewWidth*0.34*0.2)
        usageeButton.addSubview(usageLabel)
        
        
        //sendTo
        let sendToButton = UIButton()
        sendToButton.frame = CGRect(x: viewWidth*0.58, y: viewHeight*0.34, width: viewWidth*0.34, height: viewWidth*0.34)
        sendToButton.backgroundColor = UIColor.magenta
        sendToButton.setImage(UIImage(named:"sentToBtn"), for: UIControlState.normal)
        sendToButton.addTarget(self, action: #selector(sendToButtonClicked(sender:)), for:.touchUpInside)
        sendToButton.layer.masksToBounds = true
        sendToButton.layer.cornerRadius = 20.0
        sendToButton.backgroundColor = UIColor.clear
        self.view.addSubview(sendToButton)
        
        //sendToLabel
        sendToLabel = UILabel()
        sendToLabel.text = usageText
        sendToLabel.frame = CGRect(x: viewWidth*0.34*0.2, y: viewWidth*0.34*0.5, width: viewWidth*0.34*0.6, height: viewWidth*0.34*0.2)
        sendToButton.addSubview(sendToLabel)
        
        
        //goQuestionBtn
        let goQuestionBtn:UIButton = UIButton()
        goQuestionBtn.frame = CGRect(x: viewWidth*0.88, y: viewHeight*0.86, width: viewWidth*0.08, height: viewWidth*0.08)
        goQuestionBtn.setImage(UIImage(named:"nextArrow"), for: UIControlState.normal)
        goQuestionBtn.addTarget(self, action: #selector(goQuestionBtnButtonClicked(sender:)), for:.touchUpInside)
        self.view.addSubview(goQuestionBtn)
    }
    
    //用途
    internal func usageeButtonClicked(sender: UIButton){
        print("cornerCircleButtonBtnClicked")

        let vc:ModalViewController = ModalViewController()
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
    
    //送る相手
    internal func sendToButtonClicked(sender: UIButton){
        print("sendToButtonClicked")
        
        
        
         let alertView = SCLAlertView()
        alertView.addButton("女性") {
            let vc:WoManModalViewController = WoManModalViewController()
            vc.modalPresentationStyle = .overCurrentContext
            self.present(vc, animated: true, completion: nil)        }
        alertView.addButton("男性") {
            let vc:ManModalViewController = ManModalViewController()
            vc.modalPresentationStyle = .overCurrentContext
            self.present(vc, animated: true, completion: nil)
        }
         alertView.showSuccess("送る相手", subTitle: "送る相手の性別を教えて下さい。")
        
    }
    
    
    
    // MARK: 季節ボタンの画像を変える
    class func setUsageLabel(season: String){
        
        usageLabel.text = season
        
    }

    // MARK: 季節ボタンの画像を変える
    class func setSenttoLabel(season: String){
        
        sendToLabel.text = season
        
    }
    //
    internal func goResultButtonClicked(sender: UIButton){
        let resultVC:ResultViewController = ResultViewController()
        self.navigationController?.pushViewController(resultVC, animated: true)
        
    }
    
    
    internal func goQuestionBtnButtonClicked(sender: UIButton){
        let questionVC:QuestionViewController = QuestionViewController()
        self.navigationController?.pushViewController(questionVC, animated: true)
        
    }
    
    
    
    
    

}
