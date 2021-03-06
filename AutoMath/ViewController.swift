//
//  ViewController.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/21.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit
import TwitterKit
import Twitter
import Accounts


class MainViewController: UIViewController {
    
    var window: UIWindow?
    
    private var myWindow: UIWindow!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        //Navigation var
//        let mainViewController = MainViewController()
//        let drawerViewController = DrawerViewController()
//        let drawerController     = KYDrawerController()
//        
//        drawerController.mainViewController = UINavigationController()
//        
//        
//        drawerController.drawerViewController = drawerViewController
//        
//        window = UIWindow(frame: UIScreen.mainScreen().bounds)
//        window?.rootViewController = drawerController
//        window?.makeKeyAndVisible()
////        window!.windowLevel = UIWindowLevelNormal - 0.1
        
        

        //twitter機能
        
        let logInButton = TWTRLogInButton(logInCompletion: {
            (session: TWTRSession!, error: NSError!) in
            // play with Twitter session
        })
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
        
        

        
        
    
    
    
     
        // Do any additional setup after loading the view.
        
    //グラデーション start
        
        //グラデーションの開始色
        let topColor = UIColor(red:0.93, green:0.93, blue:0.94, alpha:1.0)
        //グラデーションの開始色
        let bottomColor = UIColor(red:0.82, green:0.95, blue:1.00, alpha:1.0)

        
        
        
        //グラデーションの色を配列で管理
        let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
        
        //グラデーションレイヤーを作成
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        
        //グラデーションの色をレイヤーに割り当てる
        gradientLayer.colors = gradientColors
        //グラデーションレイヤーをスクリーンサイズにする
        gradientLayer.frame = self.view.bounds
        
        //グラデーションレイヤーをビューの一番下に配置
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
        
    //グラデーション end
        
        //buttonを生成 start
        let logbutton = UIButton()
        let friendbutton = UIButton()
        let infobutton = UIButton()
        //表示されるテキスト
        logbutton.setTitle("Study log", forState: .Normal)
        friendbutton.setTitle("Friends", forState: .Normal)
        infobutton.setTitle("Info", forState: .Normal)
        
        
        //テキストの色
        logbutton.setTitleColor(UIColor(red:0.93, green:0.93, blue:0.94, alpha:1.0), forState: .Normal)
        friendbutton.setTitleColor(UIColor(red:0.93, green:0.93, blue:0.94, alpha:1.0), forState: .Normal)
        infobutton.setTitleColor(UIColor(red:0.93, green:0.93, blue:0.94, alpha:1.0), forState: .Normal)
        
        
        
        //タップした状態の色
        logbutton.setTitleColor(UIColor(red:0.93, green:0.93, blue:0.94, alpha:0.7), forState: .Highlighted)
        friendbutton.setTitleColor(UIColor(red:0.93, green:0.93, blue:0.94, alpha:0.7), forState: .Highlighted)
        infobutton.setTitleColor(UIColor(red:0.93, green:0.93, blue:0.94, alpha:0.7), forState: .Highlighted)
        
        //サイズ
        logbutton.frame = CGRectMake(0, 0, 85, 30)
        friendbutton.frame = CGRectMake(0, 0, 85, 30)
        infobutton.frame = CGRectMake(0, 0, 85, 30)
        
        //タグ番号
        logbutton.tag = 1
        friendbutton.tag = 1
        infobutton.tag = 1
        
        
        //配置場所
        logbutton.layer.position = CGPoint(x: self.view.frame.width/4, y:250)
        friendbutton.layer.position = CGPoint(x: self.view.frame.width*2/4, y:250)
        infobutton.layer.position = CGPoint(x: self.view.frame.width*3/4, y:250)
        
        //背景色
        logbutton.backgroundColor = UIColor(red:0.31, green:0.81, blue:1.00, alpha:1.0)
        friendbutton.backgroundColor = UIColor(red:0.31, green:0.81, blue:1.00, alpha:1.0)
        infobutton.backgroundColor = UIColor(red:0.31, green:0.81, blue:1.00, alpha:1.0)
        
        //タップされた時の
        
        //角丸
        logbutton.layer.cornerRadius = 10
        friendbutton.layer.cornerRadius = 10
        infobutton.layer.cornerRadius = 10
        
        //viewにボタンを追加する
        self.view.addSubview(logbutton)
        self.view.addSubview(friendbutton)
        self.view.addSubview(infobutton)
        //buttonを生成 end
        
    }
    
}

